-- ����, USER, ��Ű��(�����ͺ��̽�)
SHOW USER; 

-- ���� �����
CREATE USER C##sqld IDENTIFIED BY sqld  --����(ID), ��й�ȣ
DEFAULT TABLESPACE USERS             -- ������ ����(���� ����)
TEMPORARY TABLESPACE TEMP;

-- ���� �ο�
GRANT CONNECT, DBA TO c##sqld; --c##sqld ���� DB ������ ���� ����(�ο�)
