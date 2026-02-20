package kr.or.kids.domain.pp.connecionlog.service.impl;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import kr.or.kids.domain.pp.connecionlog.mapper.ConnectionLogMapper;
import kr.or.kids.domain.pp.connecionlog.service.ConnectionLogService;
import kr.or.kids.domain.pp.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;

import java.math.BigDecimal;
import java.util.HashMap;

@Slf4j
@Service
public class ConnectionLogServiceImpl implements ConnectionLogService {

    @Autowired
    private ConnectionLogMapper connectionLogMapper;

    /**
     * 사용자정보등록
     * @param param
     * @return
     */
    @Transactional
    public ApiPrnDto insert(ConnectionLogInsertReqVO insertVO) {

        ApiPrnDto result             = new ApiPrnDto();
        HashMap<String, Object> bizData = new HashMap<>();

        try {
            
            if (!StringUtils.hasLength(insertVO.getSrvcUserId())) {
                throw new RuntimeException("srvcUserId 파라미터가 누락되었습니다.");
            }

            /**
             * BizProc
             */
            Long connectLogNextId = connectionLogMapper.nextConnectionLogReq();

            DrugsafeUtil util = new DrugsafeUtil();
            String yyyyMMddHHmmss = util.dateFromat("yyyyMMddHHmmss");
            String HHmmss = util.dateFromat("HHmmss");

            insertVO.setCntnLogSn(BigDecimal.valueOf(connectLogNextId));
            insertVO.setCntnOcrnDt(yyyyMMddHHmmss);

            // 로그인 아웃 여부 1 로그인 2 로그아웃
            if (insertVO.getCntnSeNo().equals("2")){
                insertVO.setSessExpryPrnmntHr(HHmmss);
            }else{
                insertVO.setTokenCrtHr(HHmmss);
            }

            connectionLogMapper.insert(insertVO);

            result.setCode("0");
            result.setMsg("로그인 접속정보가  등록되었습니다.");
            bizData.put("cntnLogSn", connectLogNextId);

        } catch(Exception e) {
            result = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        result.setData(bizData);
        return result;
    }


}
