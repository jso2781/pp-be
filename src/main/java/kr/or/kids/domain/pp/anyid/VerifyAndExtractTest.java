package kr.or.kids.domain.pp.anyid;

import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import kr.or.anyid.util.AnyidCertRef;

public class VerifyAndExtractTest {

	public static void main(String args[]) throws Exception {
		// 
		String str = "UJZ2K7uGxgUjOmlp03Fy++p4EXY2v0RrkIwJXylRUbBHi0ZFUx1PAZ5hV26dH76XKCoFtuFbUahAGulL5xLRwX7KgVKg1ak1Fa0o";
		System.out.println("str.length()="+str.length());
//		AnyidCertRef anyidCertRef = new AnyidCertRef();
//
//		String ssob = "0000000002.286F7579B7EDB44DEF0FD3E3A57A4F0BjfDJ5Mcdw9QqwZ2ArvEnhFNCsr+RlDMtP/mLnbNRYE3Eq/p25ew4QrHxxkPPWK2sSzwoSrY+iN14hpQyWw4mbHdF7mRLKsMaSp1+AkexEsgjphz9T0FG+uBTDFsukzrbi83zvlWjKxP6ekR/rvGRt15pLQHj8NiaS2g6+bkOlbkVTOnnPgl9Fc0CVkzQrLmdD80E/eKi4QJXDc957woppRsaFSPCmI3rGqvMRjLCr9DNDZG+ijlNgV6dehKE7Lw8odYrGZxg8EFMPVDAOVrxqfOeqcjzoIEiyBNq2BvS7Mti9hMdG2pCrTVd3kwx9b5c58440RgII/cvfughL97A+DxW7ynEwA7YvkEqdoo96LAuztjVS9ni4Cwu/SDgnX5KPqXksj3gJiKcOkhDCxLE8g==5D80D0B8A325C0D3CBAFF5BD22A065744F53D145B03D9DDFFEA683876C3ADE48";
//		String tag = "ff8f5a51-37a7-48a2-85d2-eb783df5bc79";
//		String kdistApiJsonFilePath = "/tmp/kdist-api9517326110381048295.json";
//		
//		Resource resource = new ClassPathResource("config/kdist/kdist-api.json");
//		InputStream inputStream = resource.getInputStream();
//		Map<String, Object> resultMap = anyidCertRef.decryptSsob(ssob, tag, inputStream);
//
//		if(resultMap != null && resultMap.size() > 0) {
//			Iterator<String> iter = resultMap.keySet().iterator();
//
//			String key = null;
//			while(iter.hasNext()) {
//				key = iter.next();
//				System.out.println("================ AnyIdAuthService anyidCertRef.decryptSsob after key="+key+", value="+resultMap.get(key));
//			}
//		}
	}
}
