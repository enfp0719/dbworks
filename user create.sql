-- 계정, USER, 스키마(데이터베이스)
SHOW USER; 

-- 계정 만들기
CREATE USER C##sqld IDENTIFIED BY sqld  --계정(ID), 비밀번호
DEFAULT TABLESPACE USERS             -- 계정의 공간(저장 공간)
TEMPORARY TABLESPACE TEMP;

-- 권한 부여
GRANT CONNECT, DBA TO c##sqld; --c##sqld 에게 DB 관리자 권한 연결(부여)
