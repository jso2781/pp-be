package kr.go.kids.domain.main.service.impl;

import java.net.URI;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.main.mapper.MainMapper;
import kr.go.kids.domain.main.service.MainService;
import kr.go.kids.domain.main.vo.MainRVO;
import kr.go.kids.domain.task.mapper.TaskCdMapper;
import kr.go.kids.domain.task.vo.TaskCdPVO;
import kr.go.kids.domain.task.vo.TaskCdRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@RequiredArgsConstructor
public class MainServiceImpl implements MainService {

    @Value("${file.storePath}")
    private String fileStorePath;

    private final TaskCdMapper taskCdMapper;
    private final MainMapper mainMapper;

    // 메인화면 컨텐츠 조회용 게시판ID를 추출하기 위한 업무구분코드
    private static final String TASK_CD_MN_IMG = "MN_IMG";
    private static final String TASK_CD_MN_BBS1 = "MN_BBS1";
    private static final String TASK_CD_MN_BBS2 = "MN_BBS2";
    private static final String TASK_CD_MN_BBS3 = "MN_BBS3";
    private static final String TASK_CD_MN_BBS4 = "MN_BBS4";
    
    // 메인화면 컨텐츠 조회용 게시판ID
    private static final String BBS_ID_NOTICE = "BBS_COM_001";
    private static final String BBS_ID_BODO = "BBS_COM_004";
    private static final String BBS_ID_NEWS = "BBS_COM_003";
    private static final String BBS_ID_CARD = "BBS_GAL_001";

    @Override
    public ApiPrnDto selectMainContents() {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        // 1. 메인페이지 상단 노출 이미지 경로
        TaskCdPVO taskCdPVO = new TaskCdPVO();
        taskCdPVO.setTaskCd(TASK_CD_MN_IMG);

        TaskCdRVO taskCdRVO = taskCdMapper.getTaskCd(taskCdPVO);
        
        if (ObjectUtils.isNotEmpty(taskCdRVO)) {
            String mainImageUrl = taskCdRVO.getTaskCdVl();
            data.put("mainImageUrl", mainImageUrl);            
        } else {
            data.put("mainImageUrl", "");            
        }

        // 2. 홍보존 게시물 last4
        List<MainRVO> promotion = mainMapper.selectRecent4PstListByTaskCd(TASK_CD_MN_BBS1);
        data.put("promotion", promotion);

        // 3.1 SNS 유튜브 게시물 last4
        List<MainRVO> youtube = mainMapper.selectRecent4PstListByTaskCd(TASK_CD_MN_BBS2);        
        for (MainRVO main : youtube) {
            String videoId = main.getVideoId();
            if (StringUtils.isNotBlank(videoId)) {
                main.setVideoId(extractYoutubeVideoId(videoId));
            }
        }        
        data.put("youtube", youtube);

        // 3.2 SNS 인스타 게시물 last4
        List<MainRVO> insta = mainMapper.selectRecent4PstListByTaskCd(TASK_CD_MN_BBS3);
        data.put("insta", insta);

        // 3.3 SNS 블로그 게시물 last4
        List<MainRVO> blog = mainMapper.selectRecent4PstListByTaskCd(TASK_CD_MN_BBS4);
        data.put("blog", blog);
        
        // 3.4 SNS 통합 20건 조회
        List<MainRVO> all_sns = mainMapper.selectRecent20PstListByTaskCds(Arrays.asList(TASK_CD_MN_BBS2, TASK_CD_MN_BBS3, TASK_CD_MN_BBS4));
        for (MainRVO main : all_sns) {
            String videoId = main.getVideoId();
            if (StringUtils.isNotBlank(videoId) && "유튜브".equals(main.getSnsType())) {
                main.setVideoId(extractYoutubeVideoId(videoId));
            }
        }           
        data.put("all_sns", all_sns);
        
        // 4.1 기관소식 공지사항 last5
        List<MainRVO> notice = mainMapper.selectRecent5PstListByBoardId(BBS_ID_NOTICE);
        data.put("notice", notice);

        // 4.2 기관소식 보도자료 last5
        List<MainRVO> bodo = mainMapper.selectRecent5PstListByBoardId(BBS_ID_BODO);
        data.put("bodo", bodo);

        // 4.3 기관소식 뉴스레터 last5
        List<MainRVO> news = mainMapper.selectRecent5PstListByBoardId(BBS_ID_NEWS);
        data.put("news", news);

        // 4.4 기관소식 카드뉴스 last5
        List<MainRVO> card = mainMapper.selectRecent5PstListByBoardId(BBS_ID_CARD);
        data.put("card", card);
        
        // 5. 팝업 목록조회
        List<MainRVO> popup = mainMapper.selectPopupList();
        data.put("popup", popup);
        
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
