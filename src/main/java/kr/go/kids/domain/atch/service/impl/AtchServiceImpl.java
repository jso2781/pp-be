package kr.go.kids.domain.atch.service.impl;

import static kr.go.kids.global.system.common.ApiResultCode.SUCCESS;

import java.io.File;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.go.kids.domain.atch.mapper.AtchMapper;
import kr.go.kids.domain.atch.service.AtchService;
import kr.go.kids.domain.atch.vo.AtchDVO;
import kr.go.kids.domain.atch.vo.AtchPVO;
import kr.go.kids.domain.atch.vo.AtchRVO;
import kr.go.kids.global.config.FileProperties;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.DrugsafeUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AtchServiceImpl implements AtchService
{
    @Autowired
    private FileProperties fileProperties;

    @Autowired
    private AtchMapper atchMapper;

    @Override
    public AtchRVO getAtch(AtchPVO atchPVO)
    {
        return atchMapper.getAtch(atchPVO);
    }

    @Override
    public int insertAtch(AtchPVO atchPVO)
    {
        return atchMapper.insertAtch(atchPVO);
    }

    @Override
    public int updateAtch(AtchPVO atchPVO)
    {
        return atchMapper.updateAtch(atchPVO);
    }

    @Override
    public int saveAtch(AtchPVO atchPVO)
    {
        return atchMapper.saveAtch(atchPVO);
    }

    @Override
    public int deleteAtch(AtchDVO atchDVO)
    {
        return atchMapper.deleteAtch(atchDVO);
    }

    /**
     * 파일 업로드(파일정보 입력 포함)
     * @param params 파일 업로드시 사용할 파라메터 정보 
     * @param uploadFiles 업로드할 파일 객체 배열
     * @return 업로드후 응답결과 객체 반환
     */
    @Transactional
    @Override
    public ApiPrnDto uploadFile(HashMap<String, Object> params, MultipartFile[] uploadFiles) {
        return uploadPost(params, uploadFiles, "attachment", null);
    }


    /**
     * 파일 업로드(파일정보 입력 포함)
     * @param params 파일 업로드시 사용할 파라메터 정보 
     * @param uploadFiles 업로드할 파일 객체 배열
     * @param fileName 업로드할 파일명
     * @return 업로드후 응답결과 객체 반환
     */
    private ApiPrnDto uploadPost(HashMap<String, Object> params, MultipartFile[] uploadFiles, String type, String fileName) {

        ApiPrnDto apiPrnDto = new ApiPrnDto(SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();
        LocalDateTime now = LocalDateTime.now();

        BigInteger menuSn = params.get("menuSn") != null ? BigInteger.valueOf(Long.parseLong(params.get("menuSn").toString())) : null;
        String menuType = params.get("menuType").toString();

        String savePath = menuType + menuSn;

        try {
            /**
             * 년월 기반 경로 생성 (예: 202512)
             */
            String yearMonth = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMM"));

            /**
             * 저장경로 설정(\data\storage\attach\202512\savePath\)
             */
            String tempSavePath = this.getSavePath(savePath, type, yearMonth);

            /**
             * 파일 Write
             */
            List<HashMap<String, Object>> uploadList = new ArrayList<>();

            for (MultipartFile uploadFile: uploadFiles) {
                /**
                 * 파일 정보
                 */
                String orginalName  = uploadFile.getOriginalFilename();
                String fileNm       = orginalName.substring(orginalName.lastIndexOf("/") + 1);
                String extNm        = fileNm.substring(fileNm.lastIndexOf(".") + 1);

                String realFileNm   = null;
                if(fileName != null) {
                    realFileNm   = fileName + "_"+String.valueOf(System.currentTimeMillis())+"." + extNm;
                }
                else {
                    realFileNm   = UUID.randomUUID().toString() + "." + extNm;
                }

                String rootFilePath = fileProperties.getStorePath();
                String saveFullPath = rootFilePath + tempSavePath + realFileNm;

                /**
                 * 저장폴더 생성
                 */
                File saveFolder = new File(rootFilePath+tempSavePath);
                if(!saveFolder.exists() && !saveFolder.isDirectory()) {
                    saveFolder.mkdirs();
                }

                /**
                 * 파일 저장
                 */
                File saveFile   = new File(saveFullPath);
                log.info("@@ saveFile:"+saveFile);
                uploadFile.transferTo(saveFile);
                long fileSize = saveFile.length();

                /**
                 * DB에 파일 정보 저장
                 */
                // 파일 ID 생성
                long nextAtchFileSn = atchMapper.nextAtchFileSn();

                // FileInsertReqVO 생성 및 데이터 설정
                AtchPVO fileInsertReqVO = new AtchPVO();

                fileInsertReqVO.setAtchFileSn(BigInteger.valueOf(nextAtchFileSn));
                fileInsertReqVO.setMenuSn(menuSn);
                fileInsertReqVO.setMenuType(menuType);
                fileInsertReqVO.setAtchFileUldHr(now.toString());
                fileInsertReqVO.setAtchFileUseYn("Y");
                fileInsertReqVO.setAtchFilePath(saveFolder.getAbsolutePath());
                fileInsertReqVO.setAtchFileNm(realFileNm);
                fileInsertReqVO.setAtchFileExtnNm(extNm);
                fileInsertReqVO.setAtchFileCn(null);
                fileInsertReqVO.setAtchFileSz(fileSize);
                fileInsertReqVO.setRgtrId("system");
                fileInsertReqVO.setRegPrgrmId("");
                fileInsertReqVO.setMdfrId("system");
                fileInsertReqVO.setMdfcnPrgrmId("");

                // DB에 파일정보 insert
                atchMapper.insertAtch(fileInsertReqVO);

                log.info("@@ File saved to DB - fileId: {}, fileName: {}, path: {}", nextAtchFileSn, orginalName, tempSavePath);

                HashMap<String, Object> updateInfo = new HashMap<String, Object>();
                updateInfo.put("fileId"    , nextAtchFileSn);    // DB에 저장된 파일 ID 추가
                updateInfo.put("filePath"  , tempSavePath);
                updateInfo.put("fileNm"    , fileNm);
                updateInfo.put("fileType"  , extNm);
                updateInfo.put("fileEncNm" , realFileNm);
                updateInfo.put("fileSize"  , fileSize);
                updateInfo.put("yearMonth" , yearMonth);     // 년월 정보 추가
                uploadList.add(updateInfo);
            }

            bizData.put("uploadList", uploadList);
        } catch(Exception e) {
            log.error("@@ File upload error: ", e);
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        apiPrnDto.setData(bizData);
        return apiPrnDto;
    }


    /**
     * 저장경로 설정
     * @param savePath 사용자 지정 경로
     * @param fileType 파일 타입 (attachment, image 등)
     * @param yearMonth 년월 (예: 202512)
     * @return 최종 저장 경로 (예: /attachment/202512/savePath/)
     */
    private String getSavePath(String savePath, String fileType, String yearMonth) {

        if (StringUtils.hasLength(savePath)) {
            savePath = savePath.replaceAll("\\.", "");
        }

        // 앞에 \ 있으면 제거
        if (StringUtils.hasLength(savePath) && savePath.startsWith(File.separator)) {
            savePath = savePath.substring(1);
        }

        log.info("rootPath = {}", fileProperties.getStorePath());

        // 수정: \attach\ca\202601\
        savePath = File.separator + "attach" + File.separator + savePath + File.separator + yearMonth + File.separator;


        // 마지막 \ 보장
        if (!savePath.endsWith(File.separator)) {
            savePath = savePath + File.separator;
        }

        log.info("savePath(before return) = {}", savePath);

        return savePath;
    }
}
