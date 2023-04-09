-- ���� ���̺�
CREATE TABLE professor(
    pnumber NUMBER(3) PRIMARY KEY,
    pname VARCHAR2(20) NOT NULL,
    major VARCHAR2 (30) NOT NULL
);
-- �ڷἳ��
DeSc professor;

-- ���� �ڷ� ����
INSERT INTO professor(pnumber, pname, major) VALUES (301, '����ö', '�����ͺ��̽�');
INSERT INTO professor(pnumber, pname, major) VALUES (402, '�۹̿�', 'ȭ�а���');
INSERT INTO professor(pnumber, pname, major) VALUES (501, '������', '������� ����');
INSERT INTO professor(pnumber, pname, major) VALUES (302, '����â', '�����ͺ��̽�');
INSERT INTO professor(pnumber, pname, major) VALUES (601, '����', '������� ����');

-- ���� �ڷ� �˻�
SELECT pnumber, pname, major FROM professor; 

-- '�۹̿�' ������ ������ �˻��Ͻÿ�

SELECT pname ����, major as ���� FROM professor WHERE pnumber = 402;

-- �ߺ��� �������� �ʴ� Ű����(DISTINCT)
-- ���� ������ ��� �˻��Ͻÿ�
SELECT DISTINCT major FROM professor; 

-- OR ������ ���
-- ������ '�����ͺ��̽�' �Ǵ�(Ȥ��) 'ȭ�а���'�� �ڷḦ �˻��Ͻÿ�. 
SELECT * FROM professor
WHERE major = '�����ͺ��̽�' OR major = 'ȭ�а���';

SELECT * FROM professor 
WHERE major IN ('�����ͺ��̽�', 'ȭ�а���');

SELECT * FROM professor 
WHERE major NOT IN ('�����ͺ��̽�', 'ȭ�а���');

SELECT * FROM student WHERE gender = '��';


-- ���ڿ� �˻�('%')
-- ������ 'ȭ�� ����'�� �ڷḦ �˻��Ͻÿ�
SELECT * FROM professor WHERE major = 'ȭ�а���';

-- ������ '����'�� ���Ե� �ڷḦ �˻��Ͻÿ�.
SELECT * FROM professor WHERE major LIKE '%����%';

-- �ڷ� ����
UPDATE professor SET major = '������а���' WHERE pnumber = 601;

-- Ŀ�� �Ϸ�
COMMMIT; 