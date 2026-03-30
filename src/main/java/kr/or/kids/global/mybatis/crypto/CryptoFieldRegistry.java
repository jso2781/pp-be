package kr.or.kids.global.mybatis.crypto;

import java.util.Map;
import java.util.Set;

/**
 * SQL 인터셉터에서 사용할 "암복호화 대상 필드 규칙"을 한 곳에 모아둔 레지스트리다.
 *
 * <p>현재 MyBatis 암복호화 처리는 DB 컬럼명이 아니라 "VO 필드명" 기준으로 동작한다.
 * 따라서 어떤 필드가 암호화/복호화 대상인지, 그리고 ca-auth 요청 시 어떤 평문 필드명으로
 * 바꿔서 보내야 하는지를 여기서 일관되게 관리한다.</p>
 *
 * <p>예를 들어 pp-be의 VO 필드가 {@code encptWrtrFlnm} 이더라도, ca-auth의
 * /encryptoList API는 평문 필드명인 {@code wrtrFlnm} 으로 요청을 받아야 한다.
 * 이런 변환 규칙을 여기서 정의한다.</p>
 */
public final class CryptoFieldRegistry {

    private CryptoFieldRegistry() {
    }

    /**
     * "암호화 대상 VO 필드명" -> "ca-auth 평문 요청 필드명" 매핑.
     *
     * <p>인터셉터는 INSERT/UPDATE/일부 SELECT 파라미터 처리 전에 VO를 스캔하고,
     * 여기 등록된 필드만 추출하여 ca-auth /encryptoList 요청 바디를 만든다.</p>
     *
     * <p>예시:
     * <ul>
     *   <li>pp-be VO 필드: encptWrtrFlnm</li>
     *   <li>ca-auth 요청 필드: wrtrFlnm</li>
     *   <li>ca-auth 응답 필드: encptWrtrFlnm</li>
     * </ul>
     * </p>
     *
     * <p>주의:
     * 필드명이 들쭉날쭉한 VO가 있으면 이 매핑이 사실상 "암호화 정책"이 된다.
     * 따라서 신규 암호화 대상 필드를 추가할 때는
     * 1) ca-auth가 처리 가능한지 확인하고
     * 2) pp-be VO 필드명과의 관계를 여기 추가해야 한다.</p>
     */
    public static final Map<String, String> ENCRYPT_FIELD_TO_PLAIN = Map.ofEntries(
            Map.entry("encptMbrFlnm", "mbrFlnm"),
            Map.entry("encptMbrEmlNm", "mbrEmlNm"),
            Map.entry("encptMbrPswd", "mbrPswd"),
            Map.entry("encptMbrTelno", "mbrTelno"),
            Map.entry("encptEmpTelno", "empTelno"),
            Map.entry("encptEmpEmlNm", "empEmlNm"),
            Map.entry("encptMngrPswd", "mngrPswd"),
            Map.entry("encptCnstnMbcmtRrno", "cnstnMbcmtRrno"),
            Map.entry("encptCnstnMbcmtActno", "cnstnMbcmtActno"),
            Map.entry("encptBfrPswd", "bfrPswd"),
            Map.entry("encptCmntPswd", "cmntPswd"),
            Map.entry("encptPicTelno", "picTelno"),
            Map.entry("encptSttyAgtTelno", "sttyAgtTelno"),
            Map.entry("encptExprtFlnm", "exprtFlnm"),
            Map.entry("encptExprtInstEmlNm", "exprtInstEmlNm"),
            Map.entry("encptWrtrFlnm", "wrtrFlnm"),
            Map.entry("encptWrtrTelno", "wrtrTelno")
    );

    /**
     * 조회 결과에서 복호화할 "VO 필드명" 목록.
     *
     * <p>인터셉터는 SELECT 결과 VO/리스트를 순회하면서 여기 포함된 필드만 골라
     * ca-auth /decryptoList 로 보낸다.</p>
     *
     * <p>일부 필드(예: 비밀번호 해시)는 복호화가 불가능하므로 여기서 제외한다.
     * 즉 "암호화 가능"과 "복호화 가능"의 집합은 완전히 같지 않을 수 있다.</p>
     */
    public static final Set<String> DECRYPT_FIELDS = Set.of(
            "encptMbrFlnm",
            "encptMbrEmlNm",
            "encptMbrTelno",
            "encptEmpTelno",
            "encptEmpEmlNm",
            "encptCnstnMbcmtRrno",
            "encptCnstnMbcmtActno",
            "encptPicTelno",
            "encptSttyAgtTelno",
            "encptExprtFlnm",
            "encptExprtInstEmlNm",
            "encptWrtrFlnm",
            "encptWrtrTelno"
    );

    /**
     * ca-auth 에서 "단방향 hash" 로 처리하므로 절대로 복호화 요청을 보내면 안 되는 필드 목록.
     *
     * <p>현재 ca-auth 는 별도 해시 전용 API가 아니라, decrypto 진입 후 특정 필드에 대해
     * "복호화 불가" 예외를 발생시키는 블랙리스트 방식으로 막고 있다.
     * 따라서 pp-be 에서도 같은 계열 필드는 아예 decryptoList 요청 대상에서 제외해
     * 불필요한 외부 호출과 오류를 줄인다.</p>
     *
     * <p>요구사항에 따라 현재는 이름에 Pswd 가 들어가는 필드를 모두 명시한다.</p>
     */
    public static final Set<String> DECRYPT_BLOCKED_FIELDS = Set.of(
            "encptMbrPswd",
            "encptMngrPswd",
            "encptBfrPswd",
            "encptCmntPswd"
    );

    /**
     * ca-auth decryptoList 응답은 {@code decptXXX} 필드명으로 평문을 내려준다.
     * 현재 pp-be 인터셉터는 encpt 필드명을 기준으로 decrypto 응답 키를 찾아야 하므로,
     * {@code encptWrtrFlnm -> decptWrtrFlnm} 같은 이름 변환을 여기서 계산한다.
     */
    public static String decryptResponseField(String encryptedFieldName) {
        return "decpt" + encryptedFieldName.substring("encpt".length());
    }

    /** 복호화 블랙리스트 필드 여부 확인용 헬퍼 */
    public static boolean isDecryptBlockedField(String fieldName) {
        return DECRYPT_BLOCKED_FIELDS.contains(fieldName);
    }
}
