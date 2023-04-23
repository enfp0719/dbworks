-- ���� ����
CREATE TABLE t_job(
    job_id  VARCHAR2(10),
    salary  NUMBER    -- �޷� ����
);

-- ���̺� �̸� ���� - RENAME(t_job -> job)
ALTER TABLE t_job RENAME TO job;

-- �ڷ� ����
INSERT INTO job VALUES ('manager', 1300);
INSERT INTO job VALUES ('manager', 1500);
INSERT INTO job VALUES ('manager', 1900);
INSERT INTO job VALUES ('helper', 1000);
INSERT INTO job VALUES ('helper', 1500);
INSERT INTO job VALUES ('helper', 2500);

-- job ��ü�� ������ �հ�
SELECT COUNT(*) ����, SUM(salary) �޿��Ѱ�
FROM job;

-- job_id �� ������ �޿� �Ѱ�
SELECT job_id, COUNT(*) ����, SUM(salary) �޿��Ѱ�
FROM job 
GROUP BY job_id;

-- job_id �� �޿� �Ѱ�� �Ұ�
SELECT job_id, SUM(salary) salary
FROM job 
GROUP BY ROLLUP(job_id)
ORDER BY job_id;

-- job_id�� �޿� �ִ밪 ���ϱ�
SELECT job_id, MAX(salary) �޿��ִ�
FROM job 
GROUP BY job_id;

-- job_id�� �޿� �ּҰ� ���ϱ�
SELECT job_id, MIN(salary) �޿��ּ�
FROM job 
GROUP BY job_id;

-- �ִ밪, �ּҰ� ���ϱ�(������) - UNION
SELECT job_id, MAX(salary) �޿��ִ�
FROM job 
GROUP BY job_id
UNION
SELECT job_id, MIN(salary) �޿��ּ�
FROM job 
GROUP BY job_id;




SELECT * FROM job;