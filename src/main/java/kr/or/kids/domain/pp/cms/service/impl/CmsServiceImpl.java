package kr.or.kids.domain.pp.cms.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import kr.or.kids.domain.pp.cms.mapper.CmsMapper;
import kr.or.kids.domain.pp.cms.service.CmsService;
import kr.or.kids.domain.pp.cms.vo.CmsPVO;
import kr.or.kids.domain.pp.cms.vo.CmsRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.exception.ApplicationException;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;

@Service
public class CmsServiceImpl implements CmsService
{
    @Autowired
    private CmsMapper cmsMapper;

    @Override
    public ApiPrnDto getCms(CmsPVO cmsPVO){
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        if(!StringUtils.hasLength(cmsPVO.getContsSn())){
            // 콘텐츠일련번호 필수 파라메터가 누락되었습니다.
            throw new ApplicationException("error.param.required", new String[] {MessageContextHolder.getMessage("label.cms.contsSn")});
        }

        try{
            CmsRVO rvo = cmsMapper.getCms(cmsPVO);

            HashMap<String, Object> bizData = new HashMap<>();

            /** 콘텐츠일련번호 */
            bizData.put("contsSn", rvo.getContsSn());

            /** 콘텐츠버전일련번호 */
            bizData.put("contsVerNo", rvo.getContsSn());

            /** 콘텐츠제목 */
            bizData.put("contsTtl", rvo.getContsTtl());

            /** 콘텐츠내용 */
            bizData.put("contsCn", rvo.getContsCn());

            /** 콘텐츠사용여부 */
            bizData.put("contsUseYn", rvo.getContsUseYn());

            /** 등록자아이디 */
            bizData.put("rgtrId", rvo.getRgtrId());

            /** 등록일시 */
            bizData.put("regDt", rvo.getRegDt());

            /** 수정자아이디 */
            bizData.put("mdfrId", rvo.getMdfrId());

            /** 수정일시 */
            bizData.put("mdfcnDt", rvo.getMdfcnDt());

            apiPrnDto.setData(bizData);
        }catch(Exception e){
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        return apiPrnDto;
    }
}
