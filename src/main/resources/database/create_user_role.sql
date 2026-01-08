create user drugsafe with password '7mw8kw8mw7kw';
/*

    // 데이터베이스에 대한 권한 부여
    -- 데이터베이스 접속 권한
    GRANT CONNECT ON DATABASE 데이터베이스명 TO 계정명;
    -- 데이터베이스 객체 생성 권한
    GRANT CREATE ON DATABASE 데이터베이스명 TO 계정명;
    -- 데이터베이스 모든 권한
    GRANT ALL PRIVILEGES ON DATABASE 데이터베이스명 TO 계정명;
    
    // 테이블에 대한 권한 부여
    -- 테이블 조회 권한
    GRANT SELECT ON TABLE 테이블명 TO 계정명;
    -- 테이블 입력 권한
    GRANT INSERT ON TABLE 테이블명 TO 계정명;
    -- 테이블 수정 권한
    GRANT UPDATE ON TABLE 테이블명 TO 계정명;
    -- 테이블 삭제 권한
    GRANT DELETE ON TABLE 테이블명 TO 계정명;
    -- 테이블 모든 권한
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "public" TO drugsafe;
    
    // 스키마에 대한 권한 부여
    -- 스키마 사용 권한
    GRANT USAGE ON SCHEMA 스키마명 TO 계정명;
    -- 스키마 객체 생성 권한
    GRANT CREATE ON SCHEMA 스키마명 TO 계정명;
    -- 스키마 모든 권한
    GRANT ALL PRIVILEGES ON SCHEMA "public" TO drugsafe;

    // 시퀀스에 대한 권한 부여
    -- 조회 및 사용 권한
    GRANT SELECT, USAGE ON SEQUENCE 시퀀스명 TO 계정명;
    -- 모든 권한
    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA "public" TO drugsafe;

    // 함수에 대한 권한 부여
    -- 실행 권한
    GRANT EXECUTE ON FUNCTION 함수명 TO 계정명;
    -- 모든 권한
    GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA "public" TO drugsafe;

    // 계정에 대한 권한 부여 
    -- 데이터베이스의 관리자 권한
    ALTER USER 계정명 WITH SUPERUSER;
    -- 데이터베이스 생성 권한
    ALTER USER 계정명 WITH CREATEDB;

    create user drugsafe with password '7mw8kw8mw7kw';

    GRANT CONNECT ON DATABASE "KIDS_OWN" TO "drugsafe";
    GRANT CONNECT ON DATABASE drugsafe TO "drugsafe";
    
    GRANT ALL PRIVILEGES ON DATABASE drugsafe TO "drugsafe";

    -- 접속 권한 회수
    REVOKE CONNECT ON DATABASE KIDS_OWN FROM drugsafe;
 */

4. psql 사용법

## 데이터베이스 관련

- \l 또는 \list : 모든 데이터베이스 목록 표시
- \c dbname 또는 \connect dbname : 특정 데이터베이스로 연결

## 테이블 관련

- \dt : 현재 데이터베이스의 모든 테이블 목록 표시
- \d tablename : 특정 테이블의 구조 확인

## 사용자 관련

- \du : 모든 사용자(롤) 목록 표시

## 기타 유용한 명령어

- \? : psql 명령어 도움말 표시
- \q : psql 종료
- \g : 이전에 실행한 쿼리 다시 실행
- \s : 명령어 실행 기록 표시

## SQL 실행

- 일반적인 SQL 문은 그대로 입력하고 세미콜론(;)으로 끝내면 실행됩니다.

## 파일 실행

- \i filename : 파일에서 SQL 명령 실행

create user drugsafe with password '7mw8kw8mw7kw';

-- drugsafe Database 생성 후 drugsafe 사용자에게 drugsafe DB의 모든 권한을 부여
--GRANT ALL PRIVILEGES ON DATABASE drugsafe TO drugsafe;
GRANT ALL PRIVILEGES ON DATABASE KIDS_OWN TO postgres;

GRANT CONNECT ON DATABASE KIDS_OWN TO drugsafe;
GRANT ALL PRIVILEGES ON DATABASE KIDS_OWN TO drugsafe;


-- 접속 권한 회수
REVOKE CONNECT ON DATABASE drugsafe FROM drugsafe;

-- 사용자계정별 접속시 기본 스키마 변경(초기 기본 스키마는 public)
ALTER ROLE drugsafe SET search_path TO "KIDS_OWN";

-- 특정 DB의 기본 스키마 변경(초기 기본 스키마는 public)
ALTER DATABASE drugsafe SET search_path TO "KIDS_OWN"; -- 예시: 'dbname' 데이터베이스의 기본 스키마를 'my_schema'로 변경
