package kr.go.kids.domain.pst.service.impl;

import java.math.BigInteger;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import kr.go.kids.domain.atch.mapper.AtchMapper;
import kr.go.kids.domain.atch.vo.AtchPVO;
import kr.go.kids.domain.atch.vo.AtchRVO;
import kr.go.kids.domain.pst.mapper.PstMapper;
import kr.go.kids.domain.pst.service.PstService;
import kr.go.kids.domain.pst.vo.PstPVO;
import kr.go.kids.domain.pst.vo.PstRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.PagingUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class PstServiceImpl implements PstService {
	
	private final PstMapper pstMapper;
	private final AtchMapper atchMapper; 
	
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

			// FIXME 첨부파일 관련 DB구조 관리자와 협의 후 수정 필요
			List<AtchRVO> files = new ArrayList<AtchRVO>();
			
			String attchId = pstRVO.getAtchFileId();
			if (StringUtils.isNotBlank(attchId)) {
				BigInteger bi = new BigInteger(attchId);
				
				AtchPVO atchPVO = new AtchPVO();
				atchPVO.setAtchFileSn(bi);
				
				AtchRVO atchRVO = atchMapper.getAtch(atchPVO);
				files.add(atchRVO);
				
				// FIXME 다중 첨부파일 테스트용 (추후 삭제)
				atchPVO.setAtchFileSn(new BigInteger("2"));							
				files.add(atchMapper.getAtch(atchPVO));				
				// ===========================================
			}
			
			pstRVO.setAtchRVOs(files);
			// ========================================= 
			
			// FIXME 동영상 URL 관련 컬럼명 확정시 수정 필요




            }
            // =========================================			
			
			data.put("detailData", pstRVO);
		}

		result.setData(data);
		return result;
	}
	
	private String extractYoutubeVideoId(String url) {
	    try {
	        URI uri = new URI(url);
	        String host = uri.getHost();

	        // youtu.be/ID
	        if (host.contains("youtu.be")) {
	            return uri.getPath().substring(1);
	        }

	        // www.youtube.com/shorts/ID
	        if (uri.getPath().startsWith("/shorts/")) {
	            return uri.getPath().replace("/shorts/", "");
	        }

	        // www.youtube.com/watch?v=ID
	        String query = uri.getQuery();
	        if (query != null) {
	            for (String param : query.split("&")) {
	                if (param.startsWith("v=")) {
	                    return param.substring(2);
	                }
	            }
	        }
	    } catch (Exception e) {
	        log.error("동영상 ID 추출에 실패하였습니다.", e);
	    }

	    return "";
	}	
}
