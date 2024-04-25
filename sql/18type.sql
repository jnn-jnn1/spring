# 문자열
# varchar(길이)

CREATE TABLE my_table3
(
    name  VARCHAR(3),
    title varchar(5),
    notes VARCHAR(1000)
);

DESC my_table3;

INSERT INTO my_table3(name, title, notes)
VALUES ('이강인', '축구선수', '파리셍제르망');

# 에러 발생(글자수 초과)
INSERT INTO my_table3(name, title, notes)
VALUES ('네이마르', '야구선수', '사우디아라비아');

CREATE TABLE my_table4
(
    name    varchar(50),
    content varchar(1000),
    writer  varchar(30)
);

INSERT INTO my_table4 (name, content, writer)
VALUES ('죽고싶지만 떡볶이는 먹고 싶어', '떡볶이 땡기는 내용', '떡튀순');

INSERT INTO my_table4(name, content, writer)
VALUES ('이기적 유전자', '유전자의 생존본능', '리처드');

INSERT INTO my_table4(name, content, writer)
VALUES ('개미', '개미는 뚠뚠 오늘도 뚠뚠', '베르나르 베르베르');

SELECT *
FROM my_table4;



#수
# 정수 INT
# 실수 DECIMAL, DEC (총길이[소수점포함], 소수점이하길이)

CREATE TABLE my_table5
(
    age    INT,
    height DEC(5, 2)
);

DESC my_table5;

# 크기 초과하면 반올림해서 들어감
INSERT INTO my_table5 (age, height)
VALUES (10, 170.25);

CREATE TABLE my_table6
(
    age    INT,
    weight DEC(3, 2)
);

INSERT INTO my_table6(age, weight)
VALUES (20, 5.34);

#날짜시간
# DATE : 날짜 (YYYY-MM-DD)
# DATETIME : 날짜시간 (YYYY-MM-DD HH:MM:SS)

CREATE TABLE my_table7
(
    col1 DATE,
    col2 DATETIME
);

INSERT INTO my_table7 (col1, col2)
VALUES ('2002-08-10', '1999-09-09 22:10:10');

SELECT *
FROM my_table7;

CREATE TABLE my_table8
(
    birthday DATE,
    testDate DATETIME
);

INSERT INTO my_table8 (birthday, testDate)
VALUES ('1994-12-10', '2024-05-19 09:30:00');

SELECT *
FROM my_table8;

CREATE TABLE my_table9
(
    string_col    VARCHAR(30),
    int_col       INT,
    dec_col       DEC(10, 2),
    date_col      DATE,
    date_time_col DATETIME
);

INSERT INTO my_table9
    (string_col, int_col, dec_col, date_col, date_time_col)
VALUES ('곧 점심시간!!', 50000, 54321.98, '2024-02-02', '1981-08-01 19:20:30');

SELECT *
FROM my_table10;

CREATE TABLE my_table10
(
    title     VARCHAR(30),
    name      VARCHAR(30),
    age       INT,
    price     DEC(10, 3),
    published DATE,
    inserted  DATETIME
);


INSERT INTO my_table10 (title, name, age, price, published, inserted)
VALUES ('이것이 자바다', '신용권', 40, 23422.223, '1999-09-09', '1999-10-10 12:33:12'),
       ('스프링부트', '홍길동', 50, 23.123, '2023-10-01', '2023-11-11 21:00:20');
