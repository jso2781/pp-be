package kr.or.kids.domain.connecionlog.service.impl;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import kr.or.kids.domain.connecionlog.mapper.ConnectionLogDetailMapper;
import kr.or.kids.domain.connecionlog.mapper.ConnectionLogMapper;
import kr.or.kids.domain.connecionlog.service.ConnectionLogDetailService;
import kr.or.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.domain.connecionlogdetail.vo.ConnectionLogDetailInsertVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;

import java.math.BigDecimal;
import java.util.HashMap;

@Slf4j
@Service
public class ConnectionLogDetailServiceImpl implements ConnectionLogDetailService {

    @Autowired
    private ConnectionLogMapper connectionLogMapper;
    @Autowired
    private ConnectionLogDetailMapper connectionLogDetailMapper;


    /**
     * 사용자정보등록
     * @param param
     * @return
     */
    @Transactional
    public ApiPrnDto insert(ConnectionLogDetailInsertVO insertVO) {

        ApiPrnDto apiPrnDto             = new ApiPrnDto();
        HashMap<String, Object> bizData = new HashMap<>();

        try {
          //  if(!StringUtils.hasLength(insertVO.getAcsrId())) {
          //      throw new RuntimeException("acsrId 파라미터가 누락되었습니다.");
          //  }
            /**
             * BizProc
             */

           // getLastId

            long lastId = connectionLogMapper.getLastId();
            long id = connectionLogDetailMapper.nextConnecttionDetailId();

            insertVO.setAcsrId(id);
            insertVO.setCntnLogSn(lastId);
            connectionLogDetailMapper.insert(insertVO);

            apiPrnDto.setCode("0");
            apiPrnDto.setMsg("로그인 접속 상세 정보가  등록되었습니다.");
            bizData.put("cntnLogSn", 1);


        } catch(Exception e) {
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        apiPrnDto.setData(bizData);
        return apiPrnDto;
    }

}
