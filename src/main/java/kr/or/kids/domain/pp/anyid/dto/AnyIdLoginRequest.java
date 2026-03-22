package kr.or.kids.domain.pp.anyid.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public record AnyIdLoginRequest(
        @JsonProperty("ssob") String ssob,
        @JsonProperty("tag") String tag,
        @JsonProperty("ci") String ci,
        /** 로그인 성공 시 이동할 SPA 경로(선택, 예: /pp/ko). 없으면 서버 기본값 사용 */
        @JsonProperty("redirectUri") String redirectUri
) {}
