-- DEPT ���̺� ����
CREATE TABLE dept(
    dept_no VARCHAR2(3),
    job_nm VARCHAR2(20),
    salary NUMBER
);

INSERT INTO dept VALUES('100', '���ǻ�', 3300000);
INSERT INTO dept VALUES('100', '������', 4300000);
INSERT INTO dept VALUES('200', '���ǻ�', 5000000);
INSERT INTO dept VALUES('200', '�����ͺм���', 4000000);
INSERT INTO dept VALUES('200', '������', 6000000);

-- �μ� ��ü�� �ο����� �޿� �հ�
SELECT COUNT(*) �ο���, SUM(salary) �޿��հ�
FROM dept;

-- �μ���, ���� �̸��� �ο���, �޿��հ�
SELECT dept_no, job_nm, COUNT(*) �ο���, SUM(salary) �޿��հ�
FROM dept
GROUP BY dept_no, job_nm;

-- �μ��� �޿� �Ұ�� ��ü �Ѱ� 
-- GROUP BY ROLLUP(Į����)
SELECT dept_no, job_nm, SUM(salary) �޿��հ�
FROM dept
GROUP BY ROLLUP(dept_no, job_nm)
ORDER BY dept_no;

-- �μ���, ���� �̸��� �޿� �Ұ�� ��ü �Ѱ� 
-- GROUP BY CUBE(Į����)
SELECT dept_no, job_nm, SUM(salary) �޿��հ�
FROM dept
GROUP BY CUBE(dept_no, job_nm)
ORDER BY dept_no;

-- �μ���, ���� �̸��� �޿� �Ұ� 
-- GROUP BY GROUPING SETS(Į����)
SELECT dept_no, job_nm, SUM(salary) �޿��հ�
FROM dept
GROUP BY GROUPING SETS(dept_no, job_nm)
ORDER BY dept_no;


