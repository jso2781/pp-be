package kr.or.kids.domain.pp.external.email.client;

import java.util.Map;

import org.springframework.stereotype.Component;

import kr.or.kids.domain.pp.external.core.ExternalApiClient;
import kr.or.kids.domain.pp.external.email.vo.EmailPVO;
import kr.or.kids.domain.pp.external.email.vo.EmailRVO;

@Component
public class EmailClient {
    private static final String SERVICE_KEY = "email";
    private final ExternalApiClient api;

    public EmailClient(ExternalApiClient api) {
        this.api = api;
    }

    public EmailRVO send(EmailPVO req) {
        return api.post(
                SERVICE_KEY,
                "/api/ca/mail/send",
                Map.of("X-Client", "ca-be"),
                null,
                req,
                EmailRVO.class
        );
    }
}
