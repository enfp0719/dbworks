-- DEPT 테이블 생성
CREATE TABLE dept(
    dept_no VARCHAR2(3),
    job_nm VARCHAR2(20),
    salary NUMBER
);

INSERT INTO dept VALUES('100', '증권사', 3300000);
INSERT INTO dept VALUES('100', '관리자', 4300000);
INSERT INTO dept VALUES('200', '증권사', 5000000);
INSERT INTO dept VALUES('200', '데이터분석가', 4000000);
INSERT INTO dept VALUES('200', '관리자', 6000000);

-- 부서 전체의 인원수와 급여 합계
SELECT COUNT(*) 인원수, SUM(salary) 급여합계
FROM dept;

-- 부서별, 직업 이름별 인원수, 급여합계
SELECT dept_no, job_nm, COUNT(*) 인원수, SUM(salary) 급여합계
FROM dept
GROUP BY dept_no, job_nm;

-- 부서별 급여 소계와 전체 총계 
-- GROUP BY ROLLUP(칼럼명)
SELECT dept_no, job_nm, SUM(salary) 급여합계
FROM dept
GROUP BY ROLLUP(dept_no, job_nm)
ORDER BY dept_no;

-- 부서별, 직업 이름별 급여 소계와 전체 총계 
-- GROUP BY CUBE(칼럼명)
SELECT dept_no, job_nm, SUM(salary) 급여합계
FROM dept
GROUP BY CUBE(dept_no, job_nm)
ORDER BY dept_no;

-- 부서별, 직업 이름별 급여 소계 
-- GROUP BY GROUPING SETS(칼럼명)
SELECT dept_no, job_nm, SUM(salary) 급여합계
FROM dept
GROUP BY GROUPING SETS(dept_no, job_nm)
ORDER BY dept_no;


