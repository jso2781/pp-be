package kr.go.kids.domain.pp.notice.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import kr.go.kids.domain.pp.notice.mapper.PstMapper;
import kr.go.kids.domain.pp.notice.service.PstService;
import kr.go.kids.domain.pp.notice.vo.PstPVO;
import kr.go.kids.domain.pp.notice.vo.PstRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.PagingUtil;

@Service
public class PstServiceImpl implements PstService {
	@Autowired
	private PstMapper pstMapper;

	@Override
	public ApiPrnDto selectPstList(PstPVO pstPVO) {
		ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
		HashMap<String, Object> data = new HashMap<>();

		PageHelper.startPage(pstPVO.getPageNum(), pstPVO.getPageSize());
		List<PstRVO> list = pstMapper.selectPstList(pstPVO);

		data = PagingUtil.getPagingInfo(list);

		if (ObjectUtils.isEmpty(list)) {
			result.setMsg("조회된 데이터가 없습니다.");
		} else {
			result.setMsg("게시글 목록 조회 완료");
		}

		result.setData(data);
		return result;
	}

	@Override
	public ApiPrnDto getPst(PstPVO pstPVO) {
		ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
		HashMap<String, Object> data = new HashMap<>();

		PstRVO pstRVO = pstMapper.getPst(pstPVO);

		if (ObjectUtils.isEmpty(pstRVO)) {
			result.setMsg("조회된 데이터가 없습니다.");
		} else {
			result.setMsg("게시글 상세 조회 완료");

			pstMapper.updtInqCnt(pstPVO);
			pstRVO.increaseInqCnt();

			data.put("detailData", pstRVO);
		}

		result.setData(data);
		return result;
	}
}
