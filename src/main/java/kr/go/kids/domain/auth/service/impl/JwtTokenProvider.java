package kr.go.kids.domain.auth.service.impl;


import java.util.Date;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.UnsupportedJwtException;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class JwtTokenProvider {

    @Value("${jwt.secret-key}")
    private String SECRET_KEY;

    @Value("${jwt.refresh-token-name}")
    private String REFRESH_TOKEN_NAME;

    /**
     * <PRE>
     * AccessToken 생성
     * </PRE>
     * @param userId
     * @param expTime(밀리초)
     * @param SECRET_KEY
     * @return
     */
    public String createAccessToken(String appId, String userId, Long expTime) {
        if (expTime < 0L) throw new RuntimeException("만료시간은0보다 커야합니다.");

        Date expireTime = new Date(System.currentTimeMillis() + expTime);
        // 토큰생성에필요한데이터설정으로토큰생성
        return Jwts.builder()
                .setSubject(userId)                                // userId & 토큰생성주체지정
                .setIssuer(appId)
                .setIssuedAt(new Date())
                .signWith(SignatureAlgorithm.HS256, SECRET_KEY)    // key, key 암호화알고리즘설정
                .setExpiration(expireTime)       // 만료 시간 설정& compact to String
                .compact();
    }

    /**
     * <PRE>
     * RefreshToken 생성
     * </PRE>
     * @param expTime(밀리초)
     * @return
     */
    public String createRefreshToken(Long expTime) {
        if (expTime < 0L) throw new RuntimeException("만료시간은0보다 커야합니다.");

        Date expireTime = new Date(System.currentTimeMillis() + expTime);

        // 토큰생성에필요한데이터설정으로토큰생성
        return Jwts.builder()
                .setSubject(REFRESH_TOKEN_NAME)
                .setIssuedAt(new Date())                           // 토큰생성주체지정
                .signWith(SignatureAlgorithm.HS256, SECRET_KEY)    // key, key 암호화알고리즘설정
                .setExpiration(expireTime)
                .compact();                                        // 만료 시간 설정& compact to String
    }

    /**
     * JWT 토큰문자열에서토큰데이터를가져오는메소드
     * @param accessToken
     * @return
     */
    public Claims getClaims(String token){
        if(!"Y".equals(this.validateToken(token))){
            throw new RuntimeException("Invalid JWT Token");
        }

        if(StringUtils.hasLength(token) && token.startsWith("Bearer ")){
            token = token.substring(7);
        }

        // 토큰 파싱
        Claims claims = parseClaims(token);
        return claims;
    }

    // 토큰 유효성검증메소드
    public String validateToken(String token){
        String returnValue = "";
        try {

            if(StringUtils.hasLength(token) && token.startsWith("Bearer ")) {
                token = token.substring(7);
            }

            Jwts.parser()
                    .setSigningKey(SECRET_KEY)
                    .parseClaimsJws(token);
            return "Y";
        } catch (MalformedJwtException e) {
            log.info("Invalid JWT Token", e);
            returnValue = "Invalid JWT Token";
        } catch (ExpiredJwtException e) {
            log.info("Expired JWT Token");
            returnValue = "Expired JWT Token";
        } catch (UnsupportedJwtException e) {
            log.info("Unsupported JWT Token", e);
            returnValue = "Unsupported JWT Token";
        } catch (IllegalArgumentException e) {
//            log.info("JWT Claims string is empty", e);
            returnValue = "JWT Claims string is empty";
        }
        return returnValue;
    }

    /**
     * 토큰 파싱
     * @param accessToken
     * @return
     */
    private Claims parseClaims(String accessToken) {
        try {
            return Jwts.parser()
                    .setSigningKey(SECRET_KEY)
                    .parseClaimsJws(accessToken)
                    .getBody();
        } catch (ExpiredJwtException e) {
            return e.getClaims();
        }
    }
}
