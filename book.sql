-- bookmall �����ͺ��̽� ����
-- book(����)���̺� ����
CREATE TABLE book(
     bookid NUMBER PRIMARY KEY,  --�⺻Ű
     bookname VARCHAR2(40) NOT NULL, --å�̸�
     publisher VARCHAR2(40) NOT NULL, --���ǻ�
     price NUMBER NOT NULL           --å����
);

-- book �ڷ� ����
INSERT INTO book VALUES (1, '�౸�� ����', '�� ������', 7000);
INSERT INTO book VALUES (2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO book VALUES (3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO book VALUES (4, '������ ���̺�', '���ѹ̵��', 35000);
INSERT INTO book VALUES (5, '�ǰ� ����', '�� ������', 8000);
INSERT INTO book VALUES (6, '����� ����', '�� ������', 6000);
INSERT INTO book VALUES (7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO book VALUES (8, '�߱��� ��Ź��', '�̻�̵��', 20000);
INSERT INTO book VALUES (9, '�ø����̾߱�', '�Ｚ��', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);
SELECT * FROM book;

COMMIT;

SELECT * FROM book;

SELECT PUBLISHER FROM BOOK;

SELECT * FROM BOOK
WHERE PRICE < 20000;
SELECT BOOKNAME, PRICE FROM BOOK;
SELECT DISTINCT PUBLISHER FROM BOOK;
SELECT * FROM BOOK
WHERE PRICE >=10000 AND PRICE <= 20000;
SELECT * FROM BOOK
WHERE PRICE BETWEEN 10000 AND 20000;

--�౸�� ���縦 �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�.
SELECT PUBLISHER FROM BOOK
WHERE BOOKNAME LIKE '�౸�� ����';

SELECT * FROM BOOK 
WHERE PUBLISHER IN('�� ������', '���ѹ̵��');

-- ���� �̸��� '�౸'�� ���Ե� ���ǻ縦 �˻��Ͻÿ�.
SELECT PUBLISHER, BOOKNAME FROM BOOK
WHERE BOOKNAME LIKE '%�౸%';

--�౸�� ���� ���� �� ������ 20000�� �̻��� ������ ã���ÿ�.
SELECT * FROM BOOK 
WHERE BOOKNAME LIKE '%�౸%'
AND PRICE >= 20000;

-- ���� ������ ���� ������ �����Ͻÿ�
SELECT * FROM BOOK
ORDER BY PRICE DESC, PUBLISHER ASC;