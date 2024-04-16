USE w3schools;

# 데이터 조회
# SELECT * FROM table명
SELECT *
FROM Customers;

SELECT *
FROM Suppliers;

# 특정 column만 조회
# SELECT column명, column명 FROM 테이블명
SELECT CustomerName, City
FROM Customers;

# 모든 컬럼 조히
# SELECT * FROM 테이블명
SELECT *
FROM Customers;

# 테이블의 컬럼들 조회
DESCRIBE Customers;
DESC Customers;

DESCRIBE Employees;
SELECT FirstName, LastName
FROM Employees;

# SELECT 에 나열한 컬럼명의 순서대로 결과가 나옴
SELECT FirstName, LastName
FROM Employees;

# SQL 작성시 관습 : 키워드는 대문자, 나머지는 소문자
select *
from Employees; -- xxx
