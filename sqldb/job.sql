-- 집합 연산
CREATE TABLE t_job(
    job_id  VARCHAR2(10),
    salary  NUMBER    -- 달러 기준
);

-- 테이블 이름 변경 - RENAME(t_job -> job)
ALTER TABLE t_job RENAME TO job;

-- 자료 삽입
INSERT INTO job VALUES ('manager', 1300);
INSERT INTO job VALUES ('manager', 1500);
INSERT INTO job VALUES ('manager', 1900);
INSERT INTO job VALUES ('helper', 1000);
INSERT INTO job VALUES ('helper', 1500);
INSERT INTO job VALUES ('helper', 2500);

-- job 전체의 개수와 합계
SELECT COUNT(*) 개수, SUM(salary) 급여총계
FROM job;

-- job_id 별 개수와 급여 총계
SELECT job_id, COUNT(*) 개수, SUM(salary) 급여총계
FROM job 
GROUP BY job_id;

-- job_id 별 급여 총계와 소계
SELECT job_id, SUM(salary) salary
FROM job 
GROUP BY ROLLUP(job_id)
ORDER BY job_id;

-- job_id별 급여 최대값 구하기
SELECT job_id, MAX(salary) 급여최대
FROM job 
GROUP BY job_id;

-- job_id별 급여 최소값 구하기
SELECT job_id, MIN(salary) 급여최소
FROM job 
GROUP BY job_id;

-- 최대값, 최소값 더하기(합집합) - UNION
SELECT job_id, MAX(salary) 급여최대
FROM job 
GROUP BY job_id
UNION
SELECT job_id, MIN(salary) 급여최소
FROM job 
GROUP BY job_id;




SELECT * FROM job;