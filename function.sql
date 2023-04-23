-- ���� �Լ�
select * from emp;

-- ��� ���̺��� �̸��� ���������� �˻��Ͻÿ� 

select * from emp
WHERE ename = '��������';

-- ����� �޿��� 300���� �ʰ�
select * from emp
WHERE salary > 3000000;

-- �޿��� 300���� �̸鼭 �μ� ��ȣ�� 1002�� ����� �˻��Ͻÿ�
select * from emp
WHERE salary = 3000000 AND DEPTNO = 1002;

-- �Ż��Ӵ��� �޿��� 320�������� �����ϼ���.

UPDATE emp SET salary = 3200000
WHERE empno = 104;

select * from emp;

-- ����� �� �ο����� ���Ͻÿ�(count �Լ�)
SELECT COUNT(*) ���ο���
FROM emp;

-- ��� �޿��� ���հ踦 ���Ͻÿ�. (sum �Լ�)
SELECT SUM(salary) �ѱ޿�
FROM emp;

SELECT AVG(salary) �޿����
FROM emp;

-- ���� Ÿ�� �Լ�
-- ��� �޿��� ����� ���Ͻÿ�. (SUM / COUNT)
SELECT SUM(salary) / COUNT(*) �޿����
FROM emp; 

SELECT ROUND(AVG(salary), -1) �޿����
FROM emp;

SELECT deptno,ename
       SUM(salary) �޿��հ�,
       ROUND(AVG(salary), -2) �޿����
FROM emp
GROUP BY ROLLUP(deptno);

SELECT deptno,
       SUM(salary) �޿��հ�,
       ROUND(AVG(salary), -2) �޿����
FROM emp
GROUP BY ROLLUP(deptno);

-- �޿��� ���� ������ �������� �����Ͻÿ�.
SELECT *
FROM emp
ORDER BY SALARY DESC;

-- �޿� ������ ���� ���ϱ� 
SELECT ename,
       salary,
       RANK() OVER(ORDER BY salary DESC) �޿�
FROM emp;

SELECT ename,
       salary,
       RANK() OVER(ORDER BY salary DESC) �޿�_RANK,
       DENSE_RANK() OVER(ORDER BY salary DESC) �޿�_DENSE_RANK
FROM emp;




-- ���ڸ� �ݿø��Ѵ�. : ROUND(����, �ڸ���)
SELECT ROUND(3.87, 1) FROM DUAL;
SELECT ROUND(12351, -2) FROM DUAL;

SELECT ABS(-10), ABS(10) FROM DUAL;

SELECT ename, salary,
              salary/30 �ϱ�,
              ROUND(salary/30, 0) ���1,
              ROUND(salary/30, 1) ���2,
              ROUND(salary/30, -1)���3
FROM emp;

SELECT TRUNC(3.87, 1), TRUNC(3.87) FROM DUAL;

SELECT FLOOR(3.87) FROM DUAL;

SELECT ename, salary,
              salary/30 �ϱ�,
              TRUNC(salary/30, 0) ���1,
              TRUNC(salary/30, 1) ���2,
              TRUNC(salary/30, -1)���3
FROM emp;
