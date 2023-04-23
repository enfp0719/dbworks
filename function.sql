-- 내장 함수
select * from emp;

-- 사원 테이블에서 이름이 을지문덕을 검색하시오 

select * from emp
WHERE ename = '을지문덕';

-- 사원의 급여가 300만원 초과
select * from emp
WHERE salary > 3000000;

-- 급여가 300만원 이면서 부서 번호가 1002인 사원을 검색하시오
select * from emp
WHERE salary = 3000000 AND DEPTNO = 1002;

-- 신사임당의 급여를 320만원으로 변경하세요.

UPDATE emp SET salary = 3200000
WHERE empno = 104;

select * from emp;

-- 사원의 총 인원수를 구하시오(count 함수)
SELECT COUNT(*) 총인원수
FROM emp;

-- 사원 급여의 총합계를 구하시오. (sum 함수)
SELECT SUM(salary) 총급여
FROM emp;

SELECT AVG(salary) 급여평균
FROM emp;

-- 숫자 타입 함수
-- 사원 급여의 평균을 구하시오. (SUM / COUNT)
SELECT SUM(salary) / COUNT(*) 급여평균
FROM emp; 

SELECT ROUND(AVG(salary), -1) 급여평균
FROM emp;

SELECT deptno,ename
       SUM(salary) 급여합계,
       ROUND(AVG(salary), -2) 급여평균
FROM emp
GROUP BY ROLLUP(deptno);

SELECT deptno,
       SUM(salary) 급여합계,
       ROUND(AVG(salary), -2) 급여평균
FROM emp
GROUP BY ROLLUP(deptno);

-- 급여가 많은 순으로 내림차순 정렬하시오.
SELECT *
FROM emp
ORDER BY SALARY DESC;

-- 급여 순으로 순위 정하기 
SELECT ename,
       salary,
       RANK() OVER(ORDER BY salary DESC) 급여
FROM emp;

SELECT ename,
       salary,
       RANK() OVER(ORDER BY salary DESC) 급여_RANK,
       DENSE_RANK() OVER(ORDER BY salary DESC) 급여_DENSE_RANK
FROM emp;




-- 숫자를 반올림한다. : ROUND(숫자, 자리수)
SELECT ROUND(3.87, 1) FROM DUAL;
SELECT ROUND(12351, -2) FROM DUAL;

SELECT ABS(-10), ABS(10) FROM DUAL;

SELECT ename, salary,
              salary/30 일급,
              ROUND(salary/30, 0) 결과1,
              ROUND(salary/30, 1) 결과2,
              ROUND(salary/30, -1)결과3
FROM emp;

SELECT TRUNC(3.87, 1), TRUNC(3.87) FROM DUAL;

SELECT FLOOR(3.87) FROM DUAL;

SELECT ename, salary,
              salary/30 일급,
              TRUNC(salary/30, 0) 결과1,
              TRUNC(salary/30, 1) 결과2,
              TRUNC(salary/30, -1)결과3
FROM emp;
