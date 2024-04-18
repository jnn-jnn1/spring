USE w3schools;

# LIKE : 와일드카드로 조회
# 와일드카드
# _ : 한글자 아무거나
# % : 0개 이상의 글자 아무거나

SELECT *
FROM Products
WHERE ProductName LIKE 'cha__';

SELECT *
FROM Orders
WHERE OrderDate LIKE '1996-07-1_';

SELECT *
FROM Orders
WHERE OrderDate LIKE '____-07-__';

SELECT *
FROM Products
WHERE ProductName LIKE 'cha%';

SELECT *
FROM Products
WHERE ProductName LIKE '%NG';

SELECT *
FROM Products
WHERE ProductName LIKE 'S%S';

SELECT *
FROM Products
WHERE ProductName LIKE '%OD%';

SELECT *
FROM Products
WHERE ProductName LIKE '%ANTON%';

SELECT *
FROM Customers
WHERE CustomerName LIKE 'B%';

SELECT *
FROM Customers
WHERE Country LIKE '%A';

SELECT *
FROM Orders
WHERE OrderDate LIKE '____-__-01';