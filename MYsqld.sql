-- DEPT ���̺� ����
CREATE TABLE DEPT(
    deptno VARCHAR2(3),
    jobname VARCHAR2(20), 
    salary NUMBER
);

INSERT INTO dept VALUES('100', '���ǻ�', 3300000);
INSERT INTO dept VALUES('100', '������', 4300000);
INSERT INTO dept VALUES('200', '���ǻ�', 5000000);
INSERT INTO dept VALUES('200', '�����ͺм���', 4000000);
INSERT INTO dept VALUES('200', '������', 6000000);

SELECT * FROM dept;




DROP TABLE DEPT;

-- �μ���, �����̸��� �ο���,�޿��հ�
SELECT deptno, jobname, COUNT(*) �ο���, SUM(salary) �޿��հ�
FROM dept
GROUP BY deptno, jobname;

-- �μ���, ���� �̸��� �޿� �Ұ��� ��ü �Ѱ�
-- GROUP BY ROLLUP(Į����)
SELECT deptno, jobname, SUM(salary) �޿��հ�
FROM dept
GROUP BY ROLLUP(deptno, jobname)
ORDER BY deptno;

-- GROUP BY ROLL UP(Į����)
SELECT deptno, jobname, SUM(salary) �޿��հ�
FROM dept
GROUP BY CUBE(deptno, jobname)
ORDER BY deptno;

SELECT deptno, jobname, SUM(salary) �޿��հ�
FROM dept
GROUP BY GROUPING SETS(deptno, jobname)
ORDER BY deptno;


