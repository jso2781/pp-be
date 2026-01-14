package kr.go.kids.domain.main.service.impl;

import java.util.HashMap;
import java.util.List;

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

@Service
@RequiredArgsConstructor
public class MainServiceImpl implements MainService {

    @Value("${file.storePath}")
    private String fileStorePath;

    private final TaskCdMapper taskCdMapper;
    private final MainMapper mainMapper;

    private static final String TASK_CD_MAIN1 = "MAIN_IMAGE_PATH";

    private static final String TASK_CD_MAIN2 = "BB_PROMOTION_ID";
    private static final String TASK_CD_MAIN3 = "BB_SNS_YOUTUBE_ID";
    private static final String TASK_CD_MAIN4 = "BB_SNS_INSTA_ID";
    private static final String TASK_CD_MAIN5 = "BB_SNS_BLOG_ID";
    private static final String TASK_CD_MAIN6 = "BB_NOTICE_ID";
    private static final String TASK_CD_MAIN7 = "BB_BODO_ID";
    private static final String TASK_CD_MAIN8 = "BB_NEWS_ID";
    private static final String TASK_CD_MAIN9 = "BB_CARD_ID";

    @Override
    public ApiPrnDto selectMainContents() {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        // 1. 메인페이지 상단 노출 이미지 경로
        TaskCdPVO taskCdPVO = new TaskCdPVO();
        taskCdPVO.setTaskCd(TASK_CD_MAIN1);

        TaskCdRVO taskCdRVO = taskCdMapper.getTaskCd(taskCdPVO);
        String mainImageUrl = taskCdRVO.getTaskCdVl();

        data.put("mainImageUrl", mainImageUrl);

        // 2. 홍보존 게시물 last5
        List<MainRVO> promotion = mainMapper.selectRecent5PstList(TASK_CD_MAIN2);
        data.put("promotion", promotion);

        // 3.1 SNS 유튜브 게시물 last4
        List<MainRVO> youtube = mainMapper.selectRecent5PstList(TASK_CD_MAIN3);
        data.put("youtube", youtube);

        // 3.2 SNS 인스타 게시물 last4
        List<MainRVO> insta = mainMapper.selectRecent5PstList(TASK_CD_MAIN4);
        data.put("insta", insta);

        // 3.3 SNS 블로그 게시물 last4
        List<MainRVO> blog = mainMapper.selectRecent5PstList(TASK_CD_MAIN5);
        data.put("blog", blog);

        // 4.1 기관소식 공지사항 last5
        List<MainRVO> notice = mainMapper.selectRecent5PstList(TASK_CD_MAIN6);
        data.put("notice", notice);

        // 4.2 기관소식 보도자료 last5
        List<MainRVO> bodo = mainMapper.selectRecent5PstList(TASK_CD_MAIN7);
        data.put("bodo", bodo);

        // 4.3 기관소식 뉴스레터 last5
        List<MainRVO> news = mainMapper.selectRecent5PstList(TASK_CD_MAIN8);
        data.put("news", news);

        // 4.4 기관소식 카드뉴스 last5
        List<MainRVO> card = mainMapper.selectRecent5PstList(TASK_CD_MAIN9);
        data.put("card", card);

        result.setData(data);
        return result;
    }
}
