package kr.go.kids.domain.pp.anyid.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public record AnyIdLoginRequest(
        @JsonProperty("ssob") String ssob,
        @JsonProperty("tag") String tag
) {}
