package kr.or.kids.domain.pp.external.connectionlog.client;

import java.util.Map;

import org.springframework.stereotype.Component;

import kr.or.kids.domain.pp.external.connectionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.domain.pp.external.core.ExternalApiClient;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Component
public class ConnectionLogClient {
    private static final String SERVICE_KEY = "connectionlog";
    private final ExternalApiClient api;

    public ConnectionLogClient(ExternalApiClient api) {
        this.api = api;
    }

    public ApiPrnDto insert(ConnectionLogInsertReqVO req) {
        return api.post(
                SERVICE_KEY,
                "/api/ca/connectionlog/insert",
                Map.of("X-Client", "ca-auth"),
                null,
                req,
                ApiPrnDto.class
        );
    }
}
