package kr.go.kids.domain.faq.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.faq.service.FaqService;
import kr.go.kids.domain.faq.vo.FaqDVO;
import kr.go.kids.domain.faq.vo.FaqPVO;
import kr.go.kids.domain.faq.vo.FaqRVO;

@Tag(name = "FaqController", description = "대국민포털_FAQ기본 관리")
@RestController
@RequestMapping(value="/api/faq")
public class FaqController
{
    @Autowired
    private FaqService faqService;

    @Operation(summary = "대국민포털_FAQ 목록 조회", description = "대국민포털_FAQ 목록 조회한다.")
    @PostMapping(value="/selectMenuList")
    @ResponseBody
    public ResponseEntity<FaqRVO> getFaq(@RequestBody FaqPVO faqPVO)
    {
        FaqRVO faq = faqService.selectMenuList(faqPVO);

        return ResponseEntity.ok(faq);
    }
}
