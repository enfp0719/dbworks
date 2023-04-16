-- �ֹ� ���̺�(�ֹ���ȣ, ����ȣ, ������ȣ, �ǸŰ���, �ֹ���)
CREATE TABLE orders(
       orderid NUMBER PRIMARY KEY,
       custid NUMBER NOT NULL,
       bookid NUMBER NOT NULL, 
       saleprice NUMBER(7) NOT NULL,
       orderdate DATE NOT NULL,
    -- �ַ�Ű �������� --
    CONSTRAINT fk_customer FOREIGN KEY(CUSTid)
    REFERENCES customer(custid),
    CONSTRAINT fk_book FOREIGN KEY(bookid)
    REFERENCES book(bookid)

);

-- orders �ڷ� ���� --
INSERT INTO orders VALUES (1, 1, 1, 6000, TO_DATE('2018-07-01'));
INSERT INTO orders VALUES (2, 1, 3, 21000, TO_DATE('2018-07-03'));
INSERT INTO orders VALUES (3, 2, 5, 8000, TO_DATE('2018-07-05'));
INSERT INTO orders VALUES (4, 3, 6, 6000, TO_DATE('2018-07-07'));
INSERT INTO orders VALUES (5, 4, 7, 20000, TO_DATE('2018-07-09'));
SELECT * FROM ORDERS;

SELECT * FROM orders;

-- ������ ���� �� �Ǹ� �Ǽ��� ���Ͻÿ�. 
SELECT COUNT(*) ���ǸŰǼ�
FROM ORDERS;


-- ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�.
SELECT SUM(SALEPRICE) ���Ǹž�
FROM orders;



--2�� ���� �ֹ� ������ �˻��Ͻÿ�.
SELECT * FROM orders
WHERE CUSTID = 2;

-- 2019.07.07 --
SELECT * 
FROM orders
WHERE orderdate = '2018-07-07';

-- ������ �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT CUSTID, SUM(SALEPRICE) ���Ǹž�
FROM ORDERS
GROUP BY CUSTID;

--������ �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�.(��, ������ 8000�� �̻��� ����)
SELECT CUSTID, SUM(SALEPRICE) ���Ǹž�
FROM ORDERS
WHERE SALEPRICE >= 8000
GROUP BY CUSTID
ORDER BY CUSTID;

-- HAVING �� -- GROUP BY�� �����Ѱ������ ������ �δ� ������ ������ �� 
-- ������ �ֹ��� ������ �ǸŰǼ��� ���Ͻÿ�.(��, �ǸŰǼ��� 3�� �̻� ���� ��)
SELECT CUSTID, 
       SUM(SALEPRICE) ���Ǹž�,
       COUNT(*) �ǸŰǼ�
FROM ORDERS
GROUP BY CUSTID
HAVING COUNT(*) >= 3;
