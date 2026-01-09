package kr.go.kids.global.util;

import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.*;

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
     * @param map
     */
    public static void convertKeysToSnake(HashMap<String, Object> map) {
        Iterator<Map.Entry<String,Object>> it = map.entrySet().iterator();
        while(it.hasNext()) {
            Map.Entry<String,Object> entry = it.next();
            map.put(DrugsafeUtil.camelToSnake(entry.getKey()), entry.getValue());
        }
    }

    /**
     * CAMEL TO UPPER SNAKE
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
     * @param code
     * @param msg
     * @return
     */
    public static ApiPrnDto getApiPrnDto(String code, String msg) {
        ApiPrnDto ApiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        ApiPrnDto.setData(new HashMap<String, Object>());
        ApiPrnDto.setCode(code);
        ApiPrnDto.setMsg(msg);
        return ApiPrnDto;
    }


    /**
     * API 공통 DTO 생성 메서드
     *
     * @param code
     * @param msg
     * @return
     */
    public static String nowDateTime(String type) {

        String result = ""; // LocalDate.parse("");
        Date nowDate = new Date();
        SimpleDateFormat simpleDateFormat;

        // 기본 포맷
        simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

        if ("yyyyMMdd".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
            result = String.valueOf(LocalDate.parse(simpleDateFormat.format(nowDate)));

        } else if ("yyyy-MM-dd".equals(type)) {
            result = String.valueOf(LocalDate.parse(simpleDateFormat.format(nowDate)));

        } else if ("yyyy-MM-dd HH:mm:ss".equals(type)) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            result = String.valueOf(LocalDate.parse(simpleDateFormat.format(nowDate)));

        } else if ("E".equals(type)) { // 요일만 반환
            simpleDateFormat = new SimpleDateFormat("E");
            result = String.valueOf(LocalDate.parse(simpleDateFormat.format(nowDate)));

        } else if ("오늘은 E요일".equals(type)) { // 한글 문구 포함
            simpleDateFormat = new SimpleDateFormat("오늘은 E요일 입니다");
            result = String.valueOf(LocalDate.parse(simpleDateFormat.format(nowDate)));

        } else {
            // 기본값 처리
            result = String.valueOf(LocalDate.parse(simpleDateFormat.format(nowDate)));
        }


        return result;
    }


}
