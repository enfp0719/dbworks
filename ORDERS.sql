-- 주문 테이블(주문번호, 고객번호, 도서번호, 판매가격, 주문일)
CREATE TABLE orders(
       orderid NUMBER PRIMARY KEY,
       custid NUMBER NOT NULL,
       bookid NUMBER NOT NULL, 
       saleprice NUMBER(7) NOT NULL,
       orderdate DATE NOT NULL,
    -- 왜래키 제약조건 --
    CONSTRAINT fk_customer FOREIGN KEY(CUSTid)
    REFERENCES customer(custid),
    CONSTRAINT fk_book FOREIGN KEY(bookid)
    REFERENCES book(bookid)

);

-- orders 자료 삽입 --
INSERT INTO orders VALUES (1, 1, 1, 6000, TO_DATE('2018-07-01'));
INSERT INTO orders VALUES (2, 1, 3, 21000, TO_DATE('2018-07-03'));
INSERT INTO orders VALUES (3, 2, 5, 8000, TO_DATE('2018-07-05'));
INSERT INTO orders VALUES (4, 3, 6, 6000, TO_DATE('2018-07-07'));
INSERT INTO orders VALUES (5, 4, 7, 20000, TO_DATE('2018-07-09'));
SELECT * FROM ORDERS;

SELECT * FROM orders;

-- 서점의 도서 총 판매 건수를 구하시오. 
SELECT COUNT(*) 총판매건수
FROM ORDERS;


-- 고객이 주문한 도서의 총 판매액을 구하시오.
SELECT SUM(SALEPRICE) 총판매액
FROM orders;



--2번 고객의 주문 내역을 검색하시오.
SELECT * FROM orders
WHERE CUSTID = 2;

-- 2019.07.07 --
SELECT * 
FROM orders
WHERE orderdate = '2018-07-07';

-- 고객별로 주문한 도서의 총 판매액을 구하시오
SELECT CUSTID, SUM(SALEPRICE) 총판매액
FROM ORDERS
GROUP BY CUSTID;

--고객별로 주문한 도서의 총 판매액을 구하시오.(단, 가격이 8000원 이상인 도서)
SELECT CUSTID, SUM(SALEPRICE) 총판매액
FROM ORDERS
WHERE SALEPRICE >= 8000
GROUP BY CUSTID
ORDER BY CUSTID;

-- HAVING 절 -- GROUP BY로 절의한결과에서 제한을 두는 조건을 가지는 것 
-- 고객별로 주문한 도서의 판매건수를 구하시오.(단, 판매건수가 3권 이상 구매 고객)
SELECT CUSTID, 
       SUM(SALEPRICE) 총판매액,
       COUNT(*) 판매건수
FROM ORDERS
GROUP BY CUSTID
HAVING COUNT(*) >= 3;
