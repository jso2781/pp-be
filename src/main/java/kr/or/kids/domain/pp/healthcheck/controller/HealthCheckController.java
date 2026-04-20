package kr.or.kids.domain.pp.healthcheck.controller;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;

import org.apache.commons.lang3.StringUtils;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.or.kids.domain.ca.common.file.service.FileService;
import kr.or.kids.domain.ca.common.file.vo.FileDataReqVO;
import kr.or.kids.domain.ca.common.file.vo.FileDeleteReqVO;
import kr.or.kids.domain.ca.common.file.vo.FileDownResVO;
import kr.or.kids.domain.ca.common.file.vo.FileGroupInsertReq;
import kr.or.kids.domain.pp.atch.mapper.AtchMapper;
import kr.or.kids.global.exception.ApplicationException;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequiredArgsConstructor
@RequestMapping(value = "/api/pp/healthcheck")
public class HealthCheckController {
	
	private final FileService fileService;
	private final AtchMapper atchMapper;
	private final Environment environment;

	@GetMapping
	public ResponseEntity<ApiPrnDto> healthcheck() {
		ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
		result.setMsg("SUCCESS");
		ApiResultCode resultCode = ApiResultCode.fromCode(result.getCode());
		return ResponseEntity.status(resultCode.getHttpStatus()).body(result);
	}

	@PostMapping(value = "/fileInfos")
	public ResponseEntity<ApiPrnDto> getFileInfos(@RequestBody FileDataReqVO fdrv) {
		ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
		result.setMsg("FAIL");

		if (!environment.acceptsProfiles(Profiles.of("local", "localout", "dev"))) {
			return null;
		}

		if (StringUtils.isNotBlank(fdrv.getAtchFileGroupId())) {
			if (StringUtils.isBlank(fdrv.getTaskSeCd())) {
				fdrv.setTaskSeCd("pp");
			}
			if (StringUtils.isBlank(fdrv.getTaskSeTrgtId())) {
				fdrv.setTaskSeTrgtId("2");
			}			
			
			HashMap<String, Object> data = new HashMap<>();		
			data.put("fileInfo", fileService.list(fdrv, 1, 10));		
			result.setData(data);
			result.setMsg("SUCCESS");
		}

		ApiResultCode resultCode = ApiResultCode.fromCode(result.getCode());
		return ResponseEntity.status(resultCode.getHttpStatus()).body(result);
	}

	@PostMapping(value = "/fileUpload", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ResponseEntity<ApiPrnDto> fileUpload(@RequestPart(value = "file", required = false) MultipartFile file) {
		ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
		result.setMsg("FAIL");

		if (environment.acceptsProfiles(Profiles.of("local", "localout", "dev"))) {

			if (ObjectUtils.isEmpty(file)) {
				throw new ApplicationException("error.param.required", new String[] { "File" });
			} else {
				MultipartFile[] attachFileArr = new MultipartFile[] { file };

				String nextAtchFileGroupId = atchMapper.nextAtchFileGroupId(); 								
				Long tempMenuSn = Long.parseLong("999");
				
				FileGroupInsertReq fgir = new FileGroupInsertReq();
				fgir.setAtchFileGroupId(nextAtchFileGroupId);
				fgir.setMenuSn(tempMenuSn);
				fgir.setTaskSeCd("pp");
				fgir.setTaskSeTrgtId("2");
				fgir.setRgtrId("admin");
				fgir.setMdfrId("admin");				

				ApiPrnDto groupInsertResult = fileService.groupInsert(fgir);
				log.info("groupInsertResult >>>> " + groupInsertResult);
				
				HashMap<String, Object> params = new HashMap<>();
				params.put("savePath", "pp");
				params.put("atchFileGroupId", nextAtchFileGroupId);
				params.put("prvcInclYn", "0");
				params.put("isExcel", "0");

				ApiPrnDto fileResult = fileService.uploadFiles(params, attachFileArr);
				
				Object obj = fileResult.getData().get("uploadList");

				if ("0".equals(fileResult.getCode())) {
					result.setMsg("[SUCCESS] atchFileGroupId : " + nextAtchFileGroupId);
				}
			}
		}

		ApiResultCode resultCode = ApiResultCode.fromCode(result.getCode());
		return ResponseEntity.status(resultCode.getHttpStatus()).body(result);
	}

	@PostMapping(value = "/fileDownload")
	public ResponseEntity<Resource> fileDownload(@RequestBody FileDataReqVO fdrv) {
		if (!environment.acceptsProfiles(Profiles.of("local", "localout", "dev"))) {
			return null;
		}

		FileDownResVO downloadParam = fileService.downloadFile(fdrv);

		Resource resource = downloadParam.getResource();

		HttpHeaders headers = new HttpHeaders();
		headers.setContentDisposition(
				ContentDisposition.attachment().filename(downloadParam.getFilename(), StandardCharsets.UTF_8).build());
		headers.add(HttpHeaders.CONTENT_TYPE, downloadParam.getContentType());
		headers.add(HttpHeaders.CONTENT_LENGTH, String.valueOf(downloadParam.getContentLength()));

		log.info("File download started: {}, size: {} bytes", downloadParam.getFilename(),
				downloadParam.getContentLength());

		return ResponseEntity.ok().headers(headers).body(resource);
	}

	@PostMapping(value = "/fileDelete")
	public ResponseEntity<ApiPrnDto> fileDelete(@RequestBody FileDataReqVO fdrv) {
		ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
		result.setMsg("FAIL");

		if (!environment.acceptsProfiles(Profiles.of("local", "localout", "dev"))) {
			return null;
		}

		if (StringUtils.isNotBlank(fdrv.getAtchFileGroupId())) {
			FileDeleteReqVO fileDeleteReqVO = new FileDeleteReqVO();
			fileDeleteReqVO.setAtchFileGroupId(fdrv.getAtchFileGroupId());
			fileService.deleteGroupFiles(fileDeleteReqVO);

			result.setMsg("SUCCESS");
		}

		ApiResultCode resultCode = ApiResultCode.fromCode(result.getCode());
		return ResponseEntity.status(resultCode.getHttpStatus()).body(result);
	}
}
