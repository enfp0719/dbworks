-- bookmall 데이터베이스 구축
-- book(도서)테이블 생성
CREATE TABLE book(
     bookid NUMBER PRIMARY KEY,  --기본키
     bookname VARCHAR2(40) NOT NULL, --책이름
     publisher VARCHAR2(40) NOT NULL, --출판사
     price NUMBER NOT NULL           --책가격
);

-- book 자료 삽입
INSERT INTO book VALUES (1, '축구의 역사', '굿 스포츠', 7000);
INSERT INTO book VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO book VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO book VALUES (4, '골프의 바이블', '대한미디어', 35000);
INSERT INTO book VALUES (5, '피겨 교본', '굿 스포츠', 8000);
INSERT INTO book VALUES (6, '양궁의 실제', '굿 스포츠', 6000);
INSERT INTO book VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book VALUES (8, '야구를 부탁해', '이상미디어', 20000);
INSERT INTO book VALUES (9, '올림픽이야기', '삼성당', 7500);
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

--축구의 역사를 출간한 출판사를 검색하시오.
SELECT PUBLISHER FROM BOOK
WHERE BOOKNAME LIKE '축구의 역사';

SELECT * FROM BOOK 
WHERE PUBLISHER IN('굿 스포츠', '대한미디어');

-- 도서 이름에 '축구'가 포함된 출판사를 검색하시오.
SELECT PUBLISHER, BOOKNAME FROM BOOK
WHERE BOOKNAME LIKE '%축구%';

--축구에 관한 도서 중 가격이 20000원 이상인 도서를 찾으시오.
SELECT * FROM BOOK 
WHERE BOOKNAME LIKE '%축구%'
AND PRICE >= 20000;

-- 도서 가격이 높은 순으로 정렬하시오
SELECT * FROM BOOK
ORDER BY PRICE DESC, PUBLISHER ASC;