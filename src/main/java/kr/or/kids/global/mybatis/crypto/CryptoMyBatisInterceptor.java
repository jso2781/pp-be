package kr.or.kids.global.mybatis.crypto;

import kr.or.kids.domain.pp.external.crypto.client.CryptoClient;
import kr.or.kids.domain.pp.external.crypto.vo.CryptoEncryptoListPVO;
import kr.or.kids.domain.pp.external.crypto.vo.CryptoEncryptoPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

/**
 * MyBatis Executor 레벨에서 SQL 전/후에 암복호화를 수행하는 인터셉터.
 *
 * <p>동작 요약:</p>
 * <ul>
 *   <li>INSERT/UPDATE/일부 SELECT 파라미터 실행 전:
 *       VO에서 암호화 대상 필드를 찾아 ca-auth /encryptoList 호출 후,
 *       암호문을 원래 VO 필드에 다시 세팅한다.</li>
 *   <li>SELECT 실행 후:
 *       결과 VO/리스트에서 복호화 대상 필드를 찾아 ca-auth /decryptoList 호출 후,
 *       평문을 결과 VO 필드에 다시 세팅한다.</li>
 * </ul>
 *
 * <p>중요:
 * 현재 기준은 "DB 컬럼명"이 아니라 "VO 필드명"이다.
 * 따라서 SQL 컬럼 alias, resultMap, mapper XML 컬럼명보다
 * 최종적으로 MyBatis에 바인딩/매핑되는 자바 필드명이 더 중요하다.</p>
 *
 * <p>또한 현재 구현은 복호화된 값을 별도 decpt 필드가 아니라
 * 기존 encpt 필드에 덮어쓰는 방식이다.
 * 즉 SELECT 결과를 프론트에 넘길 때 encptXXX 필드 안에 평문이 들어갈 수 있다.</p>
 */
@Slf4j
@Component
@Intercepts({
        @Signature(type = Executor.class, method = "update", args = {MappedStatement.class, Object.class}),
        @Signature(type = Executor.class, method = "query", args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class}),
        @Signature(type = Executor.class, method = "query", args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class, CacheKey.class, BoundSql.class})
})
public class CryptoMyBatisInterceptor implements Interceptor {

    /** ca-auth 암복호화 API를 표준 external client 방식으로 호출하는 클라이언트 */
    private final CryptoClient cryptoClient;

    /** 로컬/프로필별로 인터셉터 전체를 끄고 켤 수 있는 플래그 */
    private final boolean enabled;

    public CryptoMyBatisInterceptor(
            CryptoClient cryptoClient,
            @Value("${crypto.sql-interceptor.enabled:false}") boolean enabled) {
        this.cryptoClient = cryptoClient;
        this.enabled = enabled;
    }

    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        // 설정상 비활성화면 MyBatis 기본 흐름만 그대로 사용한다.
        if (!enabled) {
            return invocation.proceed();
        }

        Object[] args = invocation.getArgs();
        MappedStatement mappedStatement = (MappedStatement) args[0];

        // MyBatis selectKey 는 insert/update 본문 실행 전에 같은 parameter VO 로 별도 SELECT 를 한 번 더 수행한다.
        // 이 시점에 암호화를 적용하면 이후 본 SQL 에서 같은 필드를 다시 암호화하게 되어 "이중 암호화"가 발생할 수 있다.
        // selectKey 는 보통 시퀀스/채번용 조회이므로 암복호화 대상 컬럼을 직접 다루지 않는다고 보고 전체 스킵한다.
        if (isSelectKeyStatement(mappedStatement)) {
            return invocation.proceed();
        }

        Object parameterObject = args.length > 1 ? args[1] : null;

        // INSERT/UPDATE/일부 SELECT 조건 파라미터를 SQL 실행 전에 암호화한다.
        if (parameterObject != null && shouldEncryptParameters(mappedStatement.getSqlCommandType())) {
            applyEncryption(parameterObject, mappedStatement.getId());
        }

        // 실제 SQL 실행
        Object result = invocation.proceed();

        // SELECT 결과만 복호화한다. INSERT/UPDATE 반환값은 보통 row count 이므로 제외한다.
        if (result != null && mappedStatement.getSqlCommandType() == SqlCommandType.SELECT) {
            applyDecryption(result, mappedStatement.getId());
        }

        return result;
    }

    /**
     * MyBatis 내부적으로 생성되는 selectKey statement 여부 판별.
     *
     * <p>일반적으로 statement id 는
     * {@code 원래Mapper메서드ID!selectKey} 형태로 만들어진다.
     * 예) {@code kr.or...ExprtApplyMapper.insertExprtInfo!selectKey}</p>
     */
    private boolean isSelectKeyStatement(MappedStatement mappedStatement) {
        return mappedStatement.getId() != null && mappedStatement.getId().endsWith("!selectKey");
    }

    /**
     * 어떤 SQL 타입에서 "실행 전 암호화"를 시도할지 결정한다.
     *
     * <p>현재는 INSERT/UPDATE 뿐 아니라 SELECT 파라미터도 포함한다.
     * 이유는 WHERE 조건으로 암호문 컬럼을 조회하는 경우, 조건값도 동일 규칙으로
     * 암호화되어야 DB 검색이 가능하기 때문이다.</p>
     */
    private boolean shouldEncryptParameters(SqlCommandType sqlCommandType) {
        return sqlCommandType == SqlCommandType.INSERT
                || sqlCommandType == SqlCommandType.UPDATE
                || sqlCommandType == SqlCommandType.SELECT;
    }

    /**
     * SQL 실행 전 parameter object 내부에서 암호화 대상 필드를 찾아 일괄 암호화한다.
     *
     * <p>처리 순서:</p>
     * <ol>
     *   <li>파라미터 객체를 재귀 순회하여 암호화 대상 필드가 들어있는 객체를 수집</li>
     *   <li>각 객체의 encptXXX 필드를 CryptoFieldRegistry 규칙에 따라 평문 요청 필드로 변환</li>
     *   <li>ca-auth /encryptoList 한 번 호출</li>
     *   <li>응답받은 암호문을 원래 객체의 encptXXX 필드에 다시 주입</li>
     * </ol>
     *
     * <p>결과적으로 mapper XML의 #{encptXXX} 바인딩은 암호화된 문자열을 사용하게 된다.</p>
     */
    private void applyEncryption(Object root, String statementId) {
        List<CryptoTarget> targets = collectTargets(root, true);
        if (targets.isEmpty()) {
            return;
        }

        // 실제로 ca-auth 호출이 필요한 객체만 별도 보관한다.
        // 대상 객체가 있어도 모든 필드값이 null/blank 면 호출 대상에서는 제외한다.
        List<CryptoTarget> requestedTargets = new ArrayList<>();
        List<Map<String, Object>> requestItems = new ArrayList<>();
        for (CryptoTarget target : targets) {
            Map<String, Object> payload = new java.util.HashMap<>();
            for (Field field : target.fields()) {
                String fieldName = field.getName();
                String plainFieldName = CryptoFieldRegistry.ENCRYPT_FIELD_TO_PLAIN.get(fieldName);
                String value = readString(field, target.instance());
                if (plainFieldName != null && hasText(value)) {
                    payload.put(plainFieldName, value);
                }
            }
            if (!payload.isEmpty()) {
                requestedTargets.add(target);
                requestItems.add(payload);
            }
        }

        if (requestItems.isEmpty()) {
            return;
        }

        // list API를 사용해 객체 여러 건을 한 번에 암호화한다.
        List<Map<String, Object>> encryptedItems = extractList(cryptoClient.encryptoList(toRequest(requestItems)));
        for (int i = 0; i < requestedTargets.size(); i++) {
            CryptoTarget target = requestedTargets.get(i);
            Map<String, Object> encryptedItem = encryptedItems.get(i);
            for (Field field : target.fields()) {
                Object encryptedValue = encryptedItem.get(field.getName());
                if (encryptedValue instanceof String stringValue && hasText(stringValue)) {
                    writeString(field, target.instance(), stringValue);
                }
            }
        }

        log.debug("Applied SQL parameter encryption via ca-auth. statementId={}, targetCount={}", statementId, encryptedItems.size());
    }

    /**
     * SQL 실행 후 조회 결과 객체에서 복호화 대상 필드를 찾아 일괄 복호화한다.
     *
     * <p>처리 방식은 applyEncryption 과 대칭적이다.
     * SELECT 결과가 단건 VO든, List&lt;VO&gt;든, 내부 중첩 구조든 재귀 탐색 후
     * decryptoList 에 모아서 보낸다.</p>
     *
     * <p>현재 구현은 복호화된 값을 별도 decpt 필드가 아니라
     * 기존 encpt 필드에 다시 써 넣는 점에 주의한다.</p>
     *
     * <p>추가로, "필드명만 맞는 평문" 이 decryptoList 로 넘어가 값이 깨지는 것을 막기 위해
     * 복호화 대상 필드는 아래 두 가지를 모두 만족할 때만 요청에 포함한다.</p>
     * <ul>
     *   <li>CryptoFieldRegistry 에 등록된 복호화 허용 필드일 것</li>
     *   <li>값이 실제 암호문처럼 보일 것 (base64 / hex / 충분히 긴 난수형 문자열 등)</li>
     * </ul>
     */
    private void applyDecryption(Object root, String statementId) {
        List<CryptoTarget> targets = collectTargets(root, false);
        if (targets.isEmpty()) {
            return;
        }

        List<CryptoTarget> requestedTargets = new ArrayList<>();
        List<Map<String, Object>> requestItems = new ArrayList<>();
        for (CryptoTarget target : targets) {
            Map<String, Object> payload = new java.util.HashMap<>();
            for (Field field : target.fields()) {
                String fieldName = field.getName();
                if (!CryptoFieldRegistry.DECRYPT_FIELDS.contains(fieldName)) {
                    continue;
                }
                if (CryptoFieldRegistry.isDecryptBlockedField(fieldName)) {
                    continue;
                }

                String value = readString(field, target.instance());
                if (hasText(value) && isLikelyEncryptedValue(fieldName, value)) {
                    payload.put(fieldName, value);
                } else if (hasText(value)) {
                    log.debug("Skipping decrypt request for non-encrypted-looking value. field={}, value={}", fieldName, value);
                }
            }
            if (!payload.isEmpty()) {
                requestedTargets.add(target);
                requestItems.add(payload);
            }
        }

        if (requestItems.isEmpty()) {
            return;
        }

        // 복호화 응답은 decptXXX 키로 오므로, 후속 매핑 시 별도 변환이 필요하다.
        List<Map<String, Object>> decryptedItems = extractList(cryptoClient.decryptoList(toRequest(requestItems)));
        for (int i = 0; i < requestedTargets.size(); i++) {
            CryptoTarget target = requestedTargets.get(i);
            Map<String, Object> decryptedItem = decryptedItems.get(i);
            for (Field field : target.fields()) {
                String responseFieldName = CryptoFieldRegistry.decryptResponseField(field.getName());
                Object decryptedValue = decryptedItem.get(responseFieldName);
                if (decryptedValue instanceof String stringValue && hasText(stringValue)) {
                    writeString(field, target.instance(), stringValue);
                }
            }
        }

        log.debug("Applied SQL result decryption via ca-auth. statementId={}, targetCount={}", statementId, decryptedItems.size());
    }

    /**
     * 내부 Map 리스트를 external.crypto 표준 요청 VO 형식으로 변환한다.
     *
     * <p>인터셉터 내부에서는 필드 수집을 단순하게 하기 위해
     * {@code List<Map<String, Object>>} 형태로 들고 있다가,
     * 실제 API 호출 직전에만 CryptoEncryptoListPVO 로 변환한다.</p>
     */
    private CryptoEncryptoListPVO toRequest(List<Map<String, Object>> items) {
        CryptoEncryptoListPVO request = new CryptoEncryptoListPVO();
        List<CryptoEncryptoPVO> listItems = new ArrayList<>();
        for (Map<String, Object> item : items) {
            CryptoEncryptoPVO vo = new CryptoEncryptoPVO();
            for (Map.Entry<String, Object> entry : item.entrySet()) {
                writeField(vo, entry.getKey(), entry.getValue());
            }
            listItems.add(vo);
        }
        request.setListItems(listItems);
        return request;
    }

    /**
     * ca-auth 표준 응답(ApiPrnDto)에서 data.list 만 추출한다.
     *
     * <p>응답 code 가 0이 아니면 SQL 처리 전체를 실패시키기 위해 예외를 던진다.
     * 암복호화 실패 상태에서 SQL 을 계속 진행하면 평문/암호문 정합성이 깨질 수 있기 때문이다.</p>
     */
    @SuppressWarnings("unchecked")
    private List<Map<String, Object>> extractList(ApiPrnDto response) {
        if (response == null) {
            throw new IllegalStateException("Empty response from ca-auth crypto client");
        }
        if (!"0".equals(response.getCode())) {
            throw new IllegalStateException("ca-auth crypto client failed. code=" + response.getCode() + ", msg=" + response.getMsg());
        }
        Object list = response.getData().get("list");
        if (!(list instanceof List<?> rawList)) {
            throw new IllegalStateException("Missing crypto list payload: " + response);
        }
        return rawList.stream()
                .map(item -> (Map<String, Object>) item)
                .toList();
    }

    /**
     * 파라미터/결과 객체를 재귀 순회하면서 암복호화 대상 객체를 수집한다.
     *
     * <p>대상은 다음을 모두 지원한다.</p>
     * <ul>
     *   <li>단건 VO</li>
     *   <li>List / Set 등 Iterable</li>
     *   <li>배열</li>
     *   <li>Map 내부 값</li>
     *   <li>중첩된 하위 VO</li>
     * </ul>
     *
     * <p>순회 도중 동일 객체를 다시 만나면 무한 루프를 막기 위해 visited 로 차단한다.</p>
     */
    private List<CryptoTarget> collectTargets(Object root, boolean encryptPhase) {
        List<CryptoTarget> targets = new ArrayList<>();
        IdentityHashMap<Object, Boolean> visited = new IdentityHashMap<>();
        collectTargetsRecursive(root, visited, targets, encryptPhase);
        return targets;
    }

    /**
     * collectTargets 의 실제 재귀 구현.
     *
     * <p>현재 단계가 encryptPhase 이면 ENCRYPT_FIELD_TO_PLAIN 에 등록된 필드를,
     * decryptPhase 이면 DECRYPT_FIELDS 에 등록된 필드를 가진 객체를 수집한다.</p>
     */
    private void collectTargetsRecursive(Object value, IdentityHashMap<Object, Boolean> visited, List<CryptoTarget> targets, boolean encryptPhase) {
        if (value == null || isSimpleValue(value) || visited.containsKey(value)) {
            return;
        }
        visited.put(value, Boolean.TRUE);

        // Map 자체를 암호화 대상으로 삼기보다는 내부 value 들을 다시 순회한다.
        if (value instanceof Map<?, ?> map) {
            for (Object entryValue : map.values()) {
                collectTargetsRecursive(entryValue, visited, targets, encryptPhase);
            }
            return;
        }

        // 리스트/컬렉션 내부 원소 순회
        if (value instanceof Iterable<?> iterable) {
            for (Object item : iterable) {
                collectTargetsRecursive(item, visited, targets, encryptPhase);
            }
            return;
        }

        // 배열 내부 원소 순회
        if (value.getClass().isArray()) {
            int length = Array.getLength(value);
            for (int i = 0; i < length; i++) {
                collectTargetsRecursive(Array.get(value, i), visited, targets, encryptPhase);
            }
            return;
        }

        // 현재 객체가 암복호화 대상 필드를 하나라도 가지고 있으면 수집 대상으로 등록
        List<Field> cryptoFields = new ArrayList<>();
        for (Field field : getAllFields(value.getClass())) {
            if (field.getType() != String.class) {
                continue;
            }

            String fieldName = field.getName();
            boolean shouldInclude = encryptPhase
                    ? CryptoFieldRegistry.ENCRYPT_FIELD_TO_PLAIN.containsKey(fieldName)
                    : CryptoFieldRegistry.DECRYPT_FIELDS.contains(fieldName);
            if (shouldInclude) {
                cryptoFields.add(field);
            }
        }

        if (!cryptoFields.isEmpty()) {
            targets.add(new CryptoTarget(value, cryptoFields));
        }

        // 현재 객체의 하위 복합 필드도 계속 순회한다.
        // String/primitive/JDK 타입은 더 내려가도 의미가 없어 제외한다.
        for (Field field : getAllFields(value.getClass())) {
            if (field.getType() == String.class || field.getType().isPrimitive() || isJdkType(field.getType())) {
                continue;
            }
            try {
                field.setAccessible(true);
                collectTargetsRecursive(field.get(value), visited, targets, encryptPhase);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Failed to inspect field: " + field.getName(), e);
            }
        }
    }

    /** 상속 계층을 포함한 모든 필드를 가져온다. */
    private List<Field> getAllFields(Class<?> type) {
        List<Field> fields = new ArrayList<>();
        Class<?> current = type;
        while (current != null && current != Object.class) {
            fields.addAll(Arrays.asList(current.getDeclaredFields()));
            current = current.getSuperclass();
        }
        return fields;
    }

    /** 재귀 순회 중 더 내려갈 필요가 없는 단순 값 타입 판별 */
    private boolean isSimpleValue(Object value) {
        return value instanceof CharSequence
                || value instanceof Number
                || value instanceof Boolean
                || value instanceof Enum<?>
                || value instanceof Date
                || value instanceof UUID;
    }

    /** java.* 패키지 타입은 내부 순회 대상에서 제외하기 위한 판별 */
    private boolean isJdkType(Class<?> type) {
        Package pkg = type.getPackage();
        return pkg != null && pkg.getName().startsWith("java.");
    }

    /** reflection 으로 String 필드 값을 읽는다. */
    private String readString(Field field, Object instance) {
        try {
            field.setAccessible(true);
            Object value = field.get(instance);
            return value instanceof String stringValue ? stringValue : null;
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Failed to read field: " + field.getName(), e);
        }
    }

    /** reflection 으로 String 필드 값을 쓴다. */
    private void writeString(Field field, Object instance, String value) {
        try {
            field.setAccessible(true);
            field.set(instance, value);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Failed to write field: " + field.getName(), e);
        }
    }

    /** 요청 VO(CryptoEncryptoPVO)에 reflection 으로 필드를 세팅한다. */
    private void writeField(Object instance, String fieldName, Object value) {
        try {
            Field field = instance.getClass().getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(instance, value);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalStateException("Failed to write request field: " + fieldName, e);
        }
    }

    /** null/blank 여부 확인용 공통 유틸 */
    private boolean hasText(String value) {
        return value != null && !value.isBlank();
    }

    /**
     * 복호화 요청 전에 "이 값이 최소한 암호문처럼 보이는지"를 보수적으로 판별한다.
     *
     * <p>판별 목적은 두 가지다.</p>
     * <ul>
     *   <li>평문 전화번호/이메일/이름이 실수로 encpt 필드에 들어와도 decrypto 호출을 막기 위함</li>
     *   <li>로컬 base64 모드와 운영 암호화 문자열을 모두 어느 정도 수용하기 위함</li>
     * </ul>
     *
     * <p>현재 기준:</p>
     * <ul>
     *   <li>base64 형식으로 정상 decode 가능하면 암호문으로 간주</li>
     *   <li>길이 32 이상 hex 문자열이면 암호문으로 간주</li>
     *   <li>그 외에는 길이가 충분히 길고(24 이상) 평문 패턴(이메일/전화번호/숫자열)과 다를 때만 허용</li>
     * </ul>
     *
     * <p>이 검사는 "완벽한 암호문 판별"이 아니라, 평문 오탐을 줄이기 위한 최소 안전장치다.</p>
     */
    private boolean isLikelyEncryptedValue(String fieldName, String value) {
        if (!hasText(value) || CryptoFieldRegistry.isDecryptBlockedField(fieldName)) {
            return false;
        }
        if (isBase64Encoded(value)) {
            return true;
        }
        if (isHexEncoded(value)) {
            return true;
        }
        if (looksLikePlainValue(value)) {
            return false;
        }
        return value.length() >= 24;
    }

    /** base64 암호문 여부 판별. 로컬 mock-base64 모드를 수용하기 위한 1차 규칙이다. */
    private boolean isBase64Encoded(String value) {
        if (!value.matches("^[A-Za-z0-9+/=]+$") || value.length() < 8 || value.length() % 4 != 0) {
            return false;
        }
        try {
            byte[] decoded = Base64.getDecoder().decode(value);
            if (decoded.length == 0) {
                return false;
            }
            String restored = new String(decoded, StandardCharsets.UTF_8);
            return hasText(restored);
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    /** hex 형태의 긴 문자열도 운영 암호문 가능성이 있어 허용한다. */
    private boolean isHexEncoded(String value) {
        return value.length() >= 32 && value.length() % 2 == 0 && value.matches("^[0-9A-Fa-f]+$");
    }

    /**
     * 평문으로 강하게 의심되는 값 패턴.
     *
     * <p>전화번호, 이메일, 순수 숫자열, 짧은 일반 텍스트는 decrypto 요청을 보내지 않도록 차단한다.</p>
     */
    private boolean looksLikePlainValue(String value) {
        if (value.contains("@")) {
            return true;
        }
        if (value.matches("^[0-9\\-\\s()+]+$")) {
            return true;
        }
        if (value.matches("^[0-9]+$")) {
            return true;
        }
        return value.length() < 8;
    }

    @Override
    public Object plugin(Object target) {
        // MyBatis plugin 체인에 현재 인터셉터를 연결한다.
        return Plugin.wrap(target, this);
    }

    @Override
    public void setProperties(Properties properties) {
        // 현재는 외부 plugin properties 를 사용하지 않는다.
    }

    /**
     * 암복호화 처리가 필요한 "객체 인스턴스 + 그 안의 대상 필드 목록" 묶음.
     *
     * <p>예:
     * 어떤 OpnnPVO 객체 안에 encptWrtrFlnm, encptWrtrTelno 가 있으면
     * instance=OpnnPVO, fields=[encptWrtrFlnm, encptWrtrTelno] 형태로 저장한다.</p>
     */
    private record CryptoTarget(Object instance, List<Field> fields) {
    }
}
