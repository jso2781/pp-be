package kr.or.kids.domain.pp.anyid;

import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import kr.or.anyid.util.AnyidCertRef;

public class VerifyAndExtractTest {

	public static void main(String args[]) throws Exception {
		AnyidCertRef anyidCertRef = new AnyidCertRef();

		// XzZan081msUkMYy45G9uwF6KKrPVnqEA3udtHXzrjaq6STkqF0DDF3fvlWz3BwTTHDVW1M7Oud22UIpsWx+wgYo7c9NOOoxruzdCEY9+RZ7Q0huNO0X+d7JzburLQcHmy7LCCv0P8kHXdCuZEHdn3GJqkQMf/6s5d9NNtdQ5iBtvOVe5tYAoLWQh+hIfPU3X2rsPlQ8s1YXFo3WbNmd6Spy9AmQ7+AYvRjWky7KaUDGsVUaXruM8zxpGDsXRpp7LqWGJm5/iLcQEWQceEqCyfeCkTEHt4S0tv73J0EYYmE0nW4fIjC1g7s0vXEOBZIx2Y5G6K2lV5b6yU72c9RIxbw==
		//

//		String ssob_back = "0000000002.286F7579B7EDB44DEF0FD3E3A57A4F0BjfDJ5Mcdw9QqwZ2ArvEnhFNCsr+RlDMtP/mLnbNRYE3Eq/p25ew4QrHxxkPPWK2sSzwoSrY+iN14hpQyWw4mbHdF7mRLKsMaSp1+AkexEsgjphz9T0FG+uBTDFsukzrbi83zvlWjKxP6ekR/rvGRt15pLQHj8NiaS2g6+bkOlbkVTOnnPgl9Fc0CVkzQrLmdD80E/eKi4QJXDc957woppRsaFSPCmI3rGqvMRjLCr9DNDZG+ijlNgV6dehKE7Lw8odYrGZxg8EFMPVDAOVrxqfOeqcjzoIEiyBNq2BvS7Mti9hMdG2pCrTVd3kwx9b5c58440RgII/cvfughL97A+DxW7ynEwA7YvkEqdoo96LAuztjVS9ni4Cwu/SDgnX5KPqXksj3gJiKcOkhDCxLE8g==5D80D0B8A325C0D3CBAFF5BD22A065744F53D145B03D9DDFFEA683876C3ADE48";

		String ssob="0000000002.474BAE9831D6A794A9C8950AF704E960SR7/ejujAV/8irBMmlJfuFRykr7HFXGl5XimcGew5aYqGSjmalxK3JSbreluKgaLg2Dxgguy0j5EYOcXg9vJCCxBW6Y6BPCS3Zp6EcX/5m4AM0iuzEmNYZIVQoPamArafRciteC6W7lK5CgsEDdF0tLtoWlXy6lZGMgCxYUkPRwfR7XpMkDLtZ1BoZPiaGOZGhzo7oax0BzaqBQHskH4thxe9y9NYHPrHeuVWfhUAvMJqwOmoMP5o1EggOudVaXNKBxIlLW1fpOgYe6Q/e3HGRuFHJIpbv+t/Ycev9K5sGmVEk25QdNOpatp9QnoC1jZGc8zrooAz+DF6bIcLahqq+wIVb2cwoVZyc5hKfV1w7z4/V4Ppko9JEYrlLHG0lRAU7ZBymjkITf/7E1iWoUc2g==BB6A783DAE9FFDD7EA5D3C4575247806F3688F398F3F01977B76305726A23627";
//		System.out.println("ssob.length()="+ssob.length());//
		String tag = "20260317065210445_1000001067_f31a7279-62c5-4207-91d2-8e1f47b9356b";
//		String kdistApiJsonFilePath = "/tmp/kdist-api9517326110381048295.json";
		Resource resource = new ClassPathResource("config/kdist/kdist-api.json");
		InputStream inputStream = resource.getInputStream();
		Map<String, Object> resultMap = anyidCertRef.decryptSsob(ssob, tag, inputStream);

		if(resultMap != null && resultMap.size() > 0) {
			Iterator<String> iter = resultMap.keySet().iterator();

			String key = null;
			while(iter.hasNext()) {
				key = iter.next();
				System.out.println("================ AnyIdAuthService anyidCertRef.decryptSsob after key="+key+", value="+resultMap.get(key));
			}
		}
	}
}
