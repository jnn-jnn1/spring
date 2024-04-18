USE w3schools;
# SELECT 에 컬럼명
# FROM 테이블명
# WHERE 솎아낼 레코드 조건
SELECT CustomerName, City, Country
FROM Customers
WHERE Country = 'Germany';
# 컬럼명 비교연산자 값
# 값에 ''로 감싸기 (but, 수형식은 생략해도 됨)

SELECT *
FROM Customers
WHERE CustomerID = 1;
# '1' 수형식일때는 '' 안붙이는 것을 권장

# 비교연산자 : 같다, 작다 <, 작거나 같다 <=, 크다 >, 크거나 같다 >=
# 같지 않다 !=, <>
SELECT *
FROM Customers
WHERE CustomerID = 3;
SELECT *
FROM Customers
WHERE CustomerID < 3;
SELECT *
FROM Customers
WHERE CustomerID > 89;
SELECT *
FROM Customers
WHERE CustomerID <> 1;

# 문자열 형식(대소문자 구분 없음)
SELECT *
FROM Customers
WHERE CustomerName >= 'S'; # S~Z까지
SELECT *
FROM Customers
WHERE Country = 'germany';

SELECT *
FROM Employees
WHERE BirthDate = '1968-12-08';

SELECT *
FROM Employees
WHERE BirthDate >= '1955-01-01';

SELECT *
FROM Suppliers
WHERE Country = 'usa';

SELECT *
FROM Employees
WHERE LastName = 'fuller';

SELECT *
FROM Products
WHERE CategoryID = 3;

SELECT *
FROM Products
WHERE Price > 20.00;

SELECT *
FROM Orders
WHERE OrderDate < '1997.01.01';

SELECT ProductName
FROM Products;

DESC Products;

SELECT CustomerName
FROM Customers;

DESC Employees;