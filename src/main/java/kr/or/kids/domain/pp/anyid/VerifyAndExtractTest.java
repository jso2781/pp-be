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

//		String ssob="0000000002.4BA17EAB17E6916128A02B8C82AC7E61A9U9h8qtfDhZtkk4qaZHbmxeMoI4Xi5ULMuMj9u+CkQS6t+Yk6ixeGIzavvvg+dbe4wI7s1Ta20sNESJHohgZKinDc5M8MtexZAOFqGspBPIPiZdVlfY0LI7xLWpALQWMqvSGa65vliMOrBWv+rQ+smOHAAIZUBPY89x4DJhLNsCh2bMYyL+lZq+k4n0FeLN2UZb+oS2BZNrD+J+1QwiVWxKDyYkzkouLnGrK9IMeYVfuije4aBXtj4eYwvdG01FlZcL4PyA7z4d/Wgq8I69H3FRhqqxtgiPosOpjYswGhaOlq4qaIuxj2GObJY52Y2w3YgRYzPmvVfR5z9ljXN/afN+/vIi3XkO/5zBjhxGjllDJzpt1a+EXnpN8ecQZRxUajYQJHuKYnTxmPGqioLgJA==CCD2FB782A40E5CB61DE4EEEF0B91C98667C3EE28A600186E6931A7167454C06";
		String ssob_naver = "0000000002.E54F64EDEDCA4C44237EE9B485138C5F1S/rPZ59+2ZFbGA04bKYRT3kUBjttCuWWiDcYNKbkTdarhaxqxopLqXmFJMOLaXTB8UheC4N+TrGycS3bes28W/l8fkcggKvCZgMxCzBwnHJvvog0FXblPJiVp4VKIwcKUGRFVECxy3Zp/G/yvGyPN2rIIIQXdVjuysjlVEF5EAhBGhEHPAR/XEq+hdNvC54DE18nmI+kS5aXbRD+MoNIbFE1h119EYpiYfT8p6rbaVI9Vj0deejD9B31dOZT+VFILSbA0Mv6wM6aQB/QqCPJ3xRr/g1yBnnG+74+eJBu9WcM4tu3Lr50azPfQf/6d6iAOdfNg5WqaIUTFo88q31bwlJvMyEPVLW2IYlX+Qm+HW5kN4czeA1WLxRVnbfpz7a35Uh0p+RoVe7HVQJ0GTnHA==97C46D7B9B106ACADC101241FEE88F26BF23956C1158765CD405D0C629A19E80";
		String ssob_kakaobank = "0000000002.2E21BCC20520C9783D1088125F470710VdfXZ4Xl8BVm/UnuKXLOHyd1+mJYplItB4fQ1QNriKuzxCwP3c6H3mwnM+yxhC4j1dajkmO3574AuRXbgd4hf/JpPtmb3w+YoWPYDelwMBZvPAZ4avDuUvpUTAv/6TKaUbbOUcWvmUPt3rfTcQv3Gb/avGmKgsTE6FC6DFNffB7Tbcd/WPvrMCTClkuL2O0kHf+8k6Jt9DzT5UdktiOA8l/UD7BgepCDYxsr3SgOyk0h6YZW1uHCHhKTpMbOKtzOH+lt2KPnlCgX42b0uz2Is2p4Y020A4tkdMDnGuCv8dgPe+Krdkg7XYjV4YASiHQs5j/+hPfTv0Z2gIXNQ4z5zrWopFw8Cm1A8MNY8ZeXdWSk8uwKEglbOhrzORAfOBp4goMXLRTjxglguXXZWvPEYQ==44D4AEFE99C0DB381B49DDFEFE38C62B9ACA5951BA8E81C0484E3F32349B8664";
		String ssob_kk= "0000000002.641F03A6DD66808ECEB88862334336102SRRvJXeEFElgxuIDGx0rhylBTcVgkGmebUgTRinYRRJrwsuq5SuHenvwS6kzrxxC6VUoREgCTrTCybmvciVRO5wTd3/HRNhop0KfYEpbHsHoF3KTlzJNoz06l66xx8l069/hYHZU0Ta8u+G6polLMk9mAWkJFr5n9tiX6TI3I7yT4AoHiVXxAofWwE9OSQ+7xpqD5NCheMy4V+2l26w3RVAE0YDWAyJ0o08h4g+e9ZGYPnPcMW8+566ugXT8eU/172tt1DAJl3BPGwpdumFjfe823h8F3MPYZ40T5eyvDuHy8LHXvfnXyMKMjo8TLOdnci25Wz9iH5oEKA1uUuAWtjSYS93vOaZw79LzQ1MS8qSeefygv8Etptr/jhXhbJQAW7DHL05NU4hivrm/Vx/cQ==0DC92FFE5A3BE24014AF07B3239AF0B6AE777ED5CD557DD89372D972B20B675A";
//		System.out.println("ssob.length()="+ssob.length());//
//		String tag = "20260325061211449_1000001067_3ba876f1-a7c4-4130-95bb-3e4b0ca766de";
		String tag_naver = "20260325061516366_1000001067_dc1ba4c4-471e-4196-82af-cea797e6cce6";
		String tag_kakaobank = "20260325061903422_1000001067_30ee851b-9a45-446b-b2af-6134a270e961";
		String tag_kk = "20260325062752976_1000001067_2ab580c0-d9bd-4fc3-9692-cb9a71a5dc38";
//		String kdistApiJsonFilePath = "/tmp/kdist-api9517326110381048295.json";
		Resource resource = firstExistingResource(
			"config/local/kdist/kdist-api.json",
			"config/dev/kdist/kdist-api.json",
			"config/prod/kdist/kdist-api.json",
			"config/kdist/kdist-api.json"
		);
		InputStream inputStream = resource.getInputStream();
		Map<String, Object> resultMap = anyidCertRef.decryptSsob(ssob_kk, tag_kk, inputStream);

		if(resultMap != null && resultMap.size() > 0) {
			Iterator<String> iter = resultMap.keySet().iterator();

			String key = null;
			while(iter.hasNext()) {
				key = iter.next();
				System.out.println("================ AnyIdAuthService anyidCertRef.decryptSsob after key="+key+", value="+resultMap.get(key));
			}
		}
	}

	private static Resource firstExistingResource(String... classpathLocations) {
		for (String classpathLocation : classpathLocations) {
			Resource resource = new ClassPathResource(classpathLocation);
			if (resource.exists()) {
				return resource;
			}
		}
		throw new IllegalStateException("Any-ID resource not found");
	}
}
