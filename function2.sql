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
