package kr.go.kids.domain.pp.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.pp.notice.service.PstService;
import kr.go.kids.domain.pp.notice.vo.PstPVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "PstController", description = "대국민포털_게시물기본 관리")
@RestController
@RequestMapping(value = "/api/pst/")
public class PstController {
	@Autowired
	private PstService pstService;

	@Operation(summary = "대국민포털_게시물기본 목록 조회", description = "대국민포털_게시물기본 목록을 조회한다.")
	@PostMapping(value = "/selectPstList")
	@ResponseBody
	public ResponseEntity<ApiPrnDto> selectPstList(@RequestBody PstPVO pstPVO) {
		ApiPrnDto apiPrnDto = pstService.selectPstList(pstPVO);
		ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
		return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
	}

	@Operation(summary = "대국민포털_게시물기본 조회", description = "대국민포털_게시물기본 조회한다.")
	@PostMapping(value = "/getPst")
	@ResponseBody
	public ResponseEntity<ApiPrnDto> getPst(@RequestBody PstPVO pstPVO) {
		ApiPrnDto apiPrnDto = pstService.getPst(pstPVO);
		ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
		return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
	}
}
