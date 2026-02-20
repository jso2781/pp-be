package kr.or.kids.global.util;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class MaskingUtil {

    private static final String MASK = "*";

    private MaskingUtil() {
        log.debug("prevent default constructor");
    }

    /**
     * 이름 마스킹
     * 1자리  : 전체 마스킹
     * 2자리  : 뒷자리 마스킹
     * 3자리~ : 가운데 마스킹
     */
    public static String maskName(String name) {
        if (name == null || name.isBlank()) return name;

        int len = name.length();

        if (len == 1) {
            return MASK;
        }

        if (len == 2) {
            return name.charAt(0) + MASK;
        }

        int middleMaskCount = len - 2;
        return name.charAt(0)
                + MASK.repeat(middleMaskCount)
                + name.charAt(len - 1);
    }

    /**
     * 전화번호 마스킹
     * ex) 010****5678
     */
    public static String maskPhone(String phone) {
        if (phone == null || phone.isBlank()) return phone;

        // 숫자만 추출
        String digits = phone.replaceAll("\\D", "");
        if (digits.length() < 7) return phone;

        return digits.replaceAll("(\\d{3})\\d{4}(\\d+)", "$1****$2");
    }

    /**
     * 이메일 마스킹
     * @ 앞 문자열의 절반 마스킹
     * ex) gohon*****@naver.com
     */
    public static String maskEmail(String email) {
        if (email == null || email.isBlank() || !email.contains("@")) return email;

        String[] parts = email.split("@", 2);
        String local = parts[0];
        String domain = parts[1];

        int len = local.length();
        int maskCount = len / 2;

        if (maskCount == 0) {
            return MASK + "@" + domain;
        }

        return local.substring(0, len - maskCount)
                + MASK.repeat(maskCount)
                + "@"
                + domain;
    }

    /**
     * 아이디 마스킹
     * 아이디 문자열의 절반 마스킹
     * ex) gdhon*****
     */
    public static String maskId(String id) {
        if (id == null || id.isBlank()) return id;

        int len = id.length();
        int maskCount = len / 2;

        if (maskCount == 0) {
            return MASK;
        }

        return id.substring(0, len - maskCount)
                + MASK.repeat(maskCount);
    }
}
