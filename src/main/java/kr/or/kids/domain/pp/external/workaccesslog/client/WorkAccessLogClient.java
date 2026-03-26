package kr.or.kids.domain.pp.external.workaccesslog.client;

import java.util.Map;

import org.springframework.stereotype.Component;

import kr.or.kids.domain.pp.external.core.ExternalApiClient;
import kr.or.kids.domain.pp.external.workaccesslog.vo.WorkAccessLogInsertVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Component
public class WorkAccessLogClient {
    private static final String SERVICE_KEY = "workaccesslog";
    private final ExternalApiClient api;

    public WorkAccessLogClient(ExternalApiClient api) {
        this.api = api;
    }

    public ApiPrnDto insert(WorkAccessLogInsertVO req) {
        return api.post(
                SERVICE_KEY,
                "/api/ca/auth/workAccessLog/insert",
                Map.of("X-Client", "ca-auth"),
                null,
                req,
                ApiPrnDto.class
        );
    }
}
