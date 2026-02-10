package kr.go.kids.global.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import com.github.pagehelper.PageInfo;

public class PagingUtil {
    
    public static <T> HashMap<String, Object> getPagingInfo (List<T> dataList) {

        // 페이징 정보가 담긴 조회객체
        HashMap<String, Object> data = new HashMap<>();
        
        // PageInfo로 감싸서 페이징 정보 추출
        PageInfo<T> pageInfo = new PageInfo<>(dataList);

        data.put("pageNum", pageInfo.getPageNum());           // 현재 페이지 번호
        data.put("pageSize", pageInfo.getPageSize());         // 페이지당 개수
        data.put("totalPages", pageInfo.getPages());          // 총 페이지 수
        data.put("totalCount", pageInfo.getTotal());          // 전체 데이터 개수
        data.put("list", pageInfo.getList());                 // 현재 페이지 데이터
        data.put("isFirstPage", pageInfo.isIsFirstPage());    // 첫 페이지 여부
        data.put("isLastPage", pageInfo.isIsLastPage());      // 마지막 페이지 여부
        data.put("hasPreviousPage", pageInfo.isHasPreviousPage()); // 이전 페이지 존재 여부
        data.put("hasNextPage", pageInfo.isHasNextPage());    // 다음 페이지 존재 여부        
        
        return data;
    }

    public static <T> Page<T> paginate(List<T> all, int page, int size) {
        if (all == null) all = List.of();
        if (page < 1) page = 1;
        if (size < 1) size = 10;

        int total = all.size();
        int fromIndex = Math.min((page - 1) * size, total);
        int toIndex   = Math.min(fromIndex + size, total);

        List<T> content = new ArrayList<>(all.subList(fromIndex, toIndex));

        return new PageImpl<>(content, PageRequest.of(page - 1, size), total);
    }
}
