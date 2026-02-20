package kr.or.kids.domain.test.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import kr.or.kids.domain.test.mapper.UserMapper;
import kr.or.kids.domain.test.service.UserService;
import kr.or.kids.domain.test.vo.UserDataResVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Slf4j
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public ApiPrnDto list(int pageNum,int pageSize) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();
        
        try {
            log.info("=== 페이징 요청: pageNum={}, pageSize={} ===", pageNum, pageSize);

            // ⭐ PageHelper는 반드시 쿼리 실행 전에 호출해야 함
            PageHelper.startPage(pageNum, pageSize);

            // UserMapper의 list() 메서드 호출 (PageHelper가 자동으로 페이징 쿼리 적용)
            List<UserDataResVO> userList = userMapper.list();

            log.info("=== DB 조회 결과: userList.size()={} ===", userList.size());

            // PageInfo로 감싸서 페이징 정보 추출
            PageInfo<UserDataResVO> pageInfo = new PageInfo<>(userList);

            // 페이징 정보 및 데이터 설정
            data.put("pageNum", pageInfo.getPageNum());           // 현재 페이지 번호
            data.put("pageSize", pageInfo.getPageSize());         // 페이지당 개수
            data.put("totalPages", pageInfo.getPages());          // 총 페이지 수
            data.put("totalCount", pageInfo.getTotal());          // 전체 데이터 개수
            data.put("list", pageInfo.getList());                 // 현재 페이지 데이터
            data.put("isFirstPage", pageInfo.isIsFirstPage());    // 첫 페이지 여부
            data.put("isLastPage", pageInfo.isIsLastPage());      // 마지막 페이지 여부
            data.put("hasPreviousPage", pageInfo.isHasPreviousPage()); // 이전 페이지 존재 여부
            data.put("hasNextPage", pageInfo.isHasNextPage());    // 다음 페이지 존재 여부
            // 데이터가 없어도 성공으로 처리 (HTTP 200)
            if (userList.size() == 0) {
                result.setMsg("조회된 데이터가 없습니다.");
            } else {
                result.setMsg("사용자 목록 조회 완료");
            }

            log.info("사용자 목록 조회 완료: {} 건", userList.size());
            
        } catch (Exception e) {
            log.error("사용자 목록 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg("사용자 목록 조회 중 오류가 발생했습니다.");
        }
        
        result.setData(data);
        return result;
    }
}
