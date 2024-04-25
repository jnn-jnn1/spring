# 사용할 데이터베이스(스키마) 선택하기
USE w3schools;

SHOW tables;

# 새 데이터베이스 만들기
CREATE DATABASE mydb1;
USE mydb1;
SHOW tables;
CREATE TABLE my_table1
(
    name VARCHAR(3),
    age  INT
);

CREATE DATABASE mydb2;
USE mydb2;
CREATE TABLE my_table1
(
    name VARCHAR(3),
    age  INT
);

# 데이터베이스 삭제 (매우 주의!)
DROP DATABASE mydb2;
