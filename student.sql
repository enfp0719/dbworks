-- 학생 테이블

CREATE TABLE student(
   snumber NUMBER(10) PRIMARY KEY,
   sname VARCHAR2 (20) NOT NULL,
   age   NUMBER(3), 
   gender VARCHAR2(4),
   address VARCHAR2(50),
   cname VARCHAR2(30), 
   pnumber NUMBER(3),
   
   --왜래키 제약조건(학과)
    CONSTRAINT fk_class FOREIGN KEY(cname)
    REFERENCES class(cname),
    
    
    -- 왜래키 교수 
    CONSTRAINT fk_professor FOREIGN KEY(pnumber)
    REFERENCES Professor(pnumber)
);

-- 학생 자료 삽입
INSERT INTO student VALUES (20211234, '이강', 22, '여', '서울시 종로구', '소프트웨어학과', 301);
INSERT INTO student VALUES (20211235, '박대양', 25, '남', '서울시 성북구', '전기전자공학과', 501);
INSERT INTO student VALUES (20211236, '한비야', 33, '여', '수원시 장안구', '전기전자공학과', 501);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211237, '김산', 33, '화학공학과', 402);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211237, '김산', 33, '화학공학과', 402);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211238, '김산', 15, '소프트웨어학과', 302);

-- 학생 자료 검색
SELECT * FROM student;

-- 성별이 '여'인 학생을 검색하시오
SELECT * FROM student WHERE gender = '여'; 

-- 나이가 20대인 학생을 검색하시오
-- BETWEEN A AND B(A 이상 (>=) B이하 (c<=)
SELECT * FROM student
WHERE age BETWEEN 20 AND 30;

SELECT * FROM student
WHERE age >= 20 AND age <= 30;

-- 주소가 수원시인 자료를 검색하시오 
SELECT * FROM student WHERE address LIKE '수원시%';

-- 정렬(ORDER BY 오름차순~ASC, 내림차순 정렬~DESC)
SELECT *
FROM student
ORDER BY age ASC;

SELECT *
FROM student 
ORDER BY sname;

--NULL
--주소가 없는 자료를 검색하시오 
SELECT *
FROM student
WHERE address IS NULL;

--자료 수정(UPDATE SET)
UPDATE professor SET major = '전기공학개론' WHERE pnumber = 601;

DELETE FROM professor 