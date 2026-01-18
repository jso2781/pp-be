package kr.go.kids.domain.auth.service;

public interface ActiveTokenService {

    void markActive(String mbrId, String tokenId, long ttlMillis);

    void revoke(String mbrId, String tokenId);

    boolean isActive(String mbrId, String tokenId);

}