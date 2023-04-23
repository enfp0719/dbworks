-- DEPT 테이블 생성
CREATE TABLE DEPT(
    deptno VARCHAR2(3),
    jobname VARCHAR2(20), 
    salary NUMBER
);

INSERT INTO dept VALUES('100', '증권사', 3300000);
INSERT INTO dept VALUES('100', '관리자', 4300000);
INSERT INTO dept VALUES('200', '증권사', 5000000);
INSERT INTO dept VALUES('200', '데이터분석가', 4000000);
INSERT INTO dept VALUES('200', '관리자', 6000000);

SELECT * FROM dept;




DROP TABLE DEPT;

-- 부서별, 직업이름별 인원수,급여합계
SELECT deptno, jobname, COUNT(*) 인원수, SUM(salary) 급여합계
FROM dept
GROUP BY deptno, jobname;

-- 부서별, 직업 이름별 급여 소개와 전체 총계
-- GROUP BY ROLLUP(칼럼명)
SELECT deptno, jobname, SUM(salary) 급여합계
FROM dept
GROUP BY ROLLUP(deptno, jobname)
ORDER BY deptno;

-- GROUP BY ROLL UP(칼럼명)
SELECT deptno, jobname, SUM(salary) 급여합계
FROM dept
GROUP BY CUBE(deptno, jobname)
ORDER BY deptno;

SELECT deptno, jobname, SUM(salary) 급여합계
FROM dept
GROUP BY GROUPING SETS(deptno, jobname)
ORDER BY deptno;


