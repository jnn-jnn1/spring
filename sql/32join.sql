USE mydb1;
CREATE DATABASE mydb2;

USE mydb2;

CREATE TABLE table1
(
    col1 INT
);

CREATE TABLE table2
(
    col2 INT
);

INSERT INTO table1
    (col1)
VALUES (1),
       (2),
       (3),
       (4);

INSERT INTO table2
    (col2)
VALUES (2),
       (2),
       (3),
       (4),
       (5);

#JOIN : 두 개(이상)의 테이블 결합
# 컬럼수 : 두 테이블의 컬럼 수의 합
# 행(레코드)수 : 두 테이블의 행의 수의 곱
# -> cartesian product

SELECT *
FROM table1
         JOIN table2;

# INNER JOIN : 두 테이블에 모두 있는 값만

SELECT *
FROM table1
         JOIN table2 ON col1 = col2;

SELECT *
FROM table1
         JOIN table2
WHERE col1 = col2;

CREATE TABLE table3
(
    col1 INT
);

CREATE TABLE table4
(
    col2 INT
);

INSERT INTO table3(col1)
VALUES (5),
       (6),
       (7);

INSERT INTO table4(col2)
VALUES (6),
       (6),
       (7),
       (8);

SELECT *
FROM table3
         JOIN table4;

SELECT *
FROM table3
         JOIN table4 ON col1 = col2;