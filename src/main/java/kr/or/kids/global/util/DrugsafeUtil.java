package kr.or.kids.global.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class DrugsafeUtil {

    public static List<Integer> RemoveNegativeNum(List<Integer> numbers) {
        // Iterator를 사용하여 배열 순회
        Iterator<Integer> iterator = numbers.iterator();
        List<Integer> returnNum = new ArrayList<Integer>();
        while (iterator.hasNext()) {
            // 현재 요소 가져오기
            Integer number = iterator.next();
            // 음수인지 확인
       /*   if (number < 0) {
                iterator.remove();
            }
        */
            if (0 < number) {
                returnNum.add(number);
            }
        }
        return returnNum;
    }

    /**
     * Dto to HashMap 변환
     *
     * @param obj
     * @return
     */
    public static HashMap<String, Object> convertDtoToHashMap(Object obj) {
        ObjectMapper objectMapper = new ObjectMapper();
        @SuppressWarnings("unchecked")
        HashMap<String, Object> map = objectMapper.convertValue(obj, HashMap.class);
        return map;
    }

    /**
     * HashMap to VO 변환
     *
     * @param map
     * @param clazz
     * @return
     */
    public static <T> T convertHashMapToVo(HashMap<String, Object> map, Class<T> clazz) {
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.convertValue(map, clazz);
    }

    /**
     * HashMap의 key를 UPPER SNAKE로 변환
     *
     * @param map
     */
    public static void convertKeysToSnake(HashMap<String, Object> map) {
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Object> entry = it.next();
            map.put(DrugsafeUtil.camelToSnake(entry.getKey()), entry.getValue());
        }
    }

    /**
     * CAMEL TO UPPER SNAKE
     *
     * @param str
     * @return
     */
    public static String camelToSnake(String str) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);
            if (Character.isUpperCase(ch)) {
                if (i > 0) result.append('_');
                result.append(Character.toLowerCase(ch));
            } else {
                result.append(ch);
            }
        }
        return result.toString().toUpperCase();
    }

    /**
     * API 공통 DTO 생성 메서드
     *
     * @param code
     * @param msg
     * @return
     */
    public static ApiPrnDto getApiPrnDto(String code, String msg) {
        ApiPrnDto result = new ApiPrnDto();
        result.setCode(code);
        result.setMsg(msg);
        result.setData(new HashMap<String, Object>());
        return result;
    }


    /**
     * 날짜 포맷 메서드
     *
     * @param type
     * @return
     */
    public static String dateFromat(String type) {
        Date nowDate = new Date();
        SimpleDateFormat simpleDateFormat;

        if ("yyyyMMdd".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
        } else if ("yyyy-MM-dd".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        } else if ("yyyy-MM-dd HH:mm:ss".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        } else if ("yyyyMMddHHmmss".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        } else if ("HHmmss".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("HHmmss");
        } else if ("E".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("E");
        } else if ("오늘은 E요일".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("오늘은 E요일 입니다");
        } else {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        }

        return simpleDateFormat.format(nowDate);
    }


    /**
     * API 공통 DTO 생성 메서드
     *
     * @param
     * @param
     * @return
     */
    public static String markingFunc(String part, String value) {

        String rtrResult = value;

        if (part.equals("name")) {
            int len = value.length();

            if (len == 2) {
                // 두 글자: 김연 -> 김*
                rtrResult = value.substring(0, 1) + "*";

                log.info("rtrResult:::::::::::::::::::::::::"+ rtrResult);

            } else if (len > 2) {
                // 세 글자 이상: 홍길동 -> 홍*동, 신사임당 -> 신**당
                String first = value.substring(0, 1);               // 첫 글자
                String last = value.substring(len - 1);   // 마지막 글자
                String middle = "*".repeat(len - 2);         // 중간 글자수만큼 * 생성

                rtrResult = first + middle + last;
            }
        } else if (part.equals("tel")) {
            // 010-2233-1345 -> 010-****-1345
            // 하이픈이 포함된 경우와 포함되지 않은 경우 모두 대응
            if (value.contains("-")) {
                String[] parts = value.split("-");
                if (parts.length == 3) {
                    // 가운데 자리만 마스킹 처리 (글자수만큼 * 생성)
                    String middle = "*".repeat(parts[1].length());
                    rtrResult = parts[0] + "-" + middle + "-" + parts[2];
                }
            } else {
                // 하이픈이 없는 경우 (예: 01022331345)
                if (value.length() >= 10) {
                    // 앞 3자리, 뒤 4자리를 제외한 나머지를 마스킹
                    int len = value.length();
                    String first = value.substring(0, 3);
                    String last = value.substring(len - 4);
                    String middle = "*".repeat(len - 7);
                    rtrResult = first + middle + last;
                }
            }
        }
        return rtrResult;
    }

    public String getClientIp(HttpServletRequest request) {

        String ip = request.getHeader("X-Forwarded-For");

        if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
            // X-Forwarded-For: client, proxy1, proxy2 ...
            return ip.split(",")[0].trim();
        }

        ip = request.getHeader("X-Real-IP");
        if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
            return ip;
        }

        ip = request.getHeader("Proxy-Client-IP");
        if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
            return ip;
        }

        ip = request.getHeader("WL-Proxy-Client-IP");
        if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
            return ip;
        }

        ip = request.getHeader("HTTP_CLIENT_IP");
        if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
            return ip;
        }

        ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {
            return ip;
        }

        return request.getRemoteAddr();
    }

    public static String sha256Hex(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(input.getBytes(StandardCharsets.UTF_8));
            return toHex(digest);
        } catch (NoSuchAlgorithmException e) {
            // JVM에 SHA-256이 없을 확률은 사실상 없지만, 런타임 예외로 감싸서 올립니다.
            throw new IllegalStateException("SHA-256 algorithm not available", e);
        }
    }

    private static String toHex(byte[] bytes) {
        char[] hexArray = "0123456789abcdef".toCharArray();
        char[] hexChars = new char[bytes.length * 2];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 0xFF;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[j * 2 + 1] = hexArray[v & 0x0F];
        }
        return new String(hexChars);
    }
}