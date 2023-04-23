SELECT LOWER('ABCD') FROM DUAL;
SELECT UPPER('abcd') FROM DUAL;
SELECT INITCAP('Korea') FROM DUAL;

SELECT SUBSTR('ABCD', 2, 3) FROM DUAL; 

SELECT SUBSTR(deptname, 1, 2) 팀명
FROM dept;

REPLACE(문자열, 변경전문자, 변경후문자)
SELECT REPLACE('AB', 'A', 'D') FROM DUAL;

-- LPAD(문자열, 채울개수, 특수문자) : 왼쪽부터 특정문자로 채움
SELECT LPAD('sky123', 10, '*') FROM DUAL;
SELECT RPAD('sky123', 10, '*') FROM DUAL;

-- 문자열 연결(더하기) -CONCAT(문자1, 문자2) > 문자1문자2
SELECT CONCAT('sky', '1234') FROM DUAL;

-- 문자열의 길이
SELECT LENGTHB('cloud'), LENGTH('cloud')
FROM DUAL;

SELECT LENGTHB('구름') 문자수, LENGTH('구름')
FROM DUAL;

SELECT SYSDATE, SYSDATE +3, SYSDATE -3 FROM DUAL;

SELECT TO_DATE('2023/4/1') +10 결과1,
       TO_DATE('2023/4/1') -10 결과2
FROM DUAL; 

-- 날짜 함수
-- ADD MONTHS() : 개월수를 더하고, 뺴기
SELECT 
  ADD_MONTHS(SYSDATE, 2) 더하기_결과,
  ADD_MONTHS(SYSDATE, -2) 뺴기_결과
FROM DUAL;

SELECT
  ROUND(MONTHS_BETWEEN(TO_DATE('2022-11-30'), TO_DATE('2022-1-1')), 0) 총개월수
FROM DUAL;

SELECT 1 + '2' DUAL;
SELECT 1 + 2 FROM DUAL; -- 자동 타입(형) 변환
SELECT TO_NUMBER('300') FROM DUAL; -- 수동 타입 변환함수

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') 날짜,
       TO_CHAR(SYSDATE, 'YYYY') 연도,
       TO_CHAR(SYSDATE, 'MM') 월,
       TO_CHAR(SYSDATE, 'DD')일
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'HH:MI:SS AM') 날짜와_시간
FROM DUAL;

-- NULL 함수 ~ NVL(인수1, 인수2)

CREATE TABLE test(
     id VARCHAR2(3), -- 칼럼명 자료형
     cnt NUMBER(2)
);

-- 자료 삽입
INSERT INTO test VALUES ('가', 5);
INSERT INTO test VALUES ('나', NULL);
INSERT INTO test VALUES ('다', 5);
INSERT INTO test VALUES ('라', NULL);
INSERT INTO test VALUES ('마', 10);

SELECT * 
FROM test;

SELECT 
COUNT(*)전체_개수, 
COUNT(cnt)칼럼_개수, 
SUM(cnt)칼럼_합계
FROM test;

SELECT 
COUNT(*)전체_개수, 
COUNT(NVL(cnt,0))칼럼_개수, 
SUM(cnt)칼럼_합계
FROM test;

SELECT id, cnt, NVL(cnt, 0) 
FROM test;

SELECT COUNT(NVL(CNT, 0)) FROM TEST;
SELECT SUM(NVL(CNT, 0)) / 4 FROM test;
SELECT AVG(NVL(CNT, 0)) FROM test;
SELECT MIN(NVL(CNT, 5)) / FROM test;

-- DECODE(칼럼, 조건, 참인값, 거짓인값) - 조건 처리에 대한 결과값을 반환
SELECT * FROM emp;

-- 성별 칼럼 추가하기 : '남자', '여자'
ALTER TABLE emp ADD gender VARCHAR2(6);

DESC emp;

-- DECODE(칼럼, 조건, 참인값, 거짓인값) - 조건 처리에 대한 결과값을 반환
-- 사원의 성별이 '남자'이면 'M'으로 표기하고, '여자'이면 'F'로 표기
SELECT ename,
       salary,
       DECODE(gender, '남자', 'M', 'F') gender
FROM emp;

-- 성별이 null인 경우 '남자'와 '여자'를 입력하시오(UPDATE)
UPDATE emp
SET gender = '남자'
WHERE empno IN (100, 101, 102, 103);

UPDATE emp
SET gender = '여자'
WHERE empno IN (104, 105);

-- CASE ~ WHEN ~ END구문
SELECT ename,
       salary,
       CASE
          WHEN gender = '남자' THEN 'M'
          WHEN gender = '여자' THEN 'F'
         -- ELSE 'F'
        END gender
FROM emp;

SELECT * FROM emp;
-- 급여가 500만원 ㅣㅇ상이면 '과장', 300만원 이상이면 '대리', 300만원 미만이면 사원으로 표기
 SELECT ename,
        salary,
        CASE
          WHEN salary >= 5000000 THEN '과장'
          WHEN salary >= 3000000 THEN '대리'
          ELSE '사원'
        END 직급
FROM emp; 

SELECT ename,
       salary,
       DECODE(salary, 5000000, '과장', 3000000, '대리', '사원') 직급
FROM emp;

SELECT *
FROM emp
WHERE ename LIKE '_관순';