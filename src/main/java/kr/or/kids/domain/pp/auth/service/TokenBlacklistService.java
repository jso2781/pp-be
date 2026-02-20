package kr.or.kids.domain.pp.auth.service;

public interface TokenBlacklistService {

    void blacklist(String token, long ttlMillis);

    boolean isBlacklisted(String token);

}