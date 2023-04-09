-- �μ��� ��� ���̺�2
CREATE TABLE dept(
    deptno  VARCHAR2(4) PRIMARY KEY,
    deptname  VARCHAR2(20)
);

CREATE TABLE emp(
    empno   NUMBER(10),
    ename   VARCHAR2(20),
    sal     NUMBER(10, 2) default 0,
    createdate DATE DEFAULT SYSDATE,
    deptno  VARCHAR2(4) NOT NULL,
    CONSTRAINT emp_pk PRIMARY KEY(empno),  --emp �⺻Ű
    CONSTRAINT dept_fk FOREIGN KEY(deptno)  -- �ܷ�Ű
    REFERENCES dept(deptno) ON DELETE CASCADE
);

-- Į�� �߰�
ALTER TABLE emp 
  ADD (age NUMBER(3) DEFAULT 1);
  
-- Į�� ����
ALTER TABLE emp
  MODIFY ename VARCHAR2(40) NOT NULL;
  
-- Į�� ����
ALTER TABLE emp
  DROP COLUMN age;
  
-- Į���� ����
ALTER TABLE emp
  RENAME COLUMN ename TO new_ename;

-- �ڷ� ����
INSERT INTO dept VALUES ('1000', '�λ���');
INSERT INTO dept VALUES ('1001', '�ѹ���');
INSERT INTO dept VALUES ('1002', '��������');

INSERT INTO emp VALUES (100, '�Ӻ���Ʈ', 2000000, SYSDATE, '1000');
INSERT INTO emp VALUES (101, '��������', 3000000, SYSDATE, '1001');
INSERT INTO emp VALUES (102, '�����ҹ�', 3000000, SYSDATE, '1002');
INSERT INTO emp VALUES (103, '�������', 5000000, SYSDATE, '1000');
INSERT INTO emp VALUES (104, '�Ż��Ӵ�', 3000000, SYSDATE, '1002');

-- �ڷ� �˻�
SELECT * FROM dept;
SELECT * FROM emp;

--�μ��� �޿� ��� ���ϱ�
SELECT deptno �μ���ȣ, avg(sal) �޿����
from emp 
group by deptno;

-- �μ� �ڷ� ����
DELETE FROM dept WHERE deptno = '1000';

DROP TABLE emp;
DROP TABLE emp CASCADE CONSTRAINTS;
DESC emp;