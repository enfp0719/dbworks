SELECT LOWER('ABCD') FROM DUAL;
SELECT UPPER('abcd') FROM DUAL;
SELECT INITCAP('Korea') FROM DUAL;

SELECT SUBSTR('ABCD', 2, 3) FROM DUAL; 

SELECT SUBSTR(deptname, 1, 2) ����
FROM dept;

REPLACE(���ڿ�, ����������, �����Ĺ���)
SELECT REPLACE('AB', 'A', 'D') FROM DUAL;

-- LPAD(���ڿ�, ä�ﰳ��, Ư������) : ���ʺ��� Ư�����ڷ� ä��
SELECT LPAD('sky123', 10, '*') FROM DUAL;
SELECT RPAD('sky123', 10, '*') FROM DUAL;

-- ���ڿ� ����(���ϱ�) -CONCAT(����1, ����2) > ����1����2
SELECT CONCAT('sky', '1234') FROM DUAL;

-- ���ڿ��� ����
SELECT LENGTHB('cloud'), LENGTH('cloud')
FROM DUAL;

SELECT LENGTHB('����') ���ڼ�, LENGTH('����')
FROM DUAL;

SELECT SYSDATE, SYSDATE +3, SYSDATE -3 FROM DUAL;

SELECT TO_DATE('2023/4/1') +10 ���1,
       TO_DATE('2023/4/1') -10 ���2
FROM DUAL; 

-- ��¥ �Լ�
-- ADD MONTHS() : �������� ���ϰ�, ����
SELECT 
  ADD_MONTHS(SYSDATE, 2) ���ϱ�_���,
  ADD_MONTHS(SYSDATE, -2) ����_���
FROM DUAL;

SELECT
  ROUND(MONTHS_BETWEEN(TO_DATE('2022-11-30'), TO_DATE('2022-1-1')), 0) �Ѱ�����
FROM DUAL;

SELECT 1 + '2' DUAL;
SELECT 1 + 2 FROM DUAL; -- �ڵ� Ÿ��(��) ��ȯ
SELECT TO_NUMBER('300') FROM DUAL; -- ���� Ÿ�� ��ȯ�Լ�

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥,
       TO_CHAR(SYSDATE, 'YYYY') ����,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD')��
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'HH:MI:SS AM') ��¥��_�ð�
FROM DUAL;

-- NULL �Լ� ~ NVL(�μ�1, �μ�2)

CREATE TABLE test(
     id VARCHAR2(3), -- Į���� �ڷ���
     cnt NUMBER(2)
);

-- �ڷ� ����
INSERT INTO test VALUES ('��', 5);
INSERT INTO test VALUES ('��', NULL);
INSERT INTO test VALUES ('��', 5);
INSERT INTO test VALUES ('��', NULL);
INSERT INTO test VALUES ('��', 10);

SELECT * 
FROM test;

SELECT 
COUNT(*)��ü_����, 
COUNT(cnt)Į��_����, 
SUM(cnt)Į��_�հ�
FROM test;

SELECT 
COUNT(*)��ü_����, 
COUNT(NVL(cnt,0))Į��_����, 
SUM(cnt)Į��_�հ�
FROM test;

SELECT id, cnt, NVL(cnt, 0)
FROM test;

SELECT COUNT(NVL(CNT, 0)) FROM TEST;
SELECT SUM(NVL(CNT, 0)) / 4 FROM test;
SELECT AVG(NVL(CNT, 0)) FROM test;
SELECT MIN(NVL(CNT, 5)) / FROM test;
