USE w3schools;

# LIMIT : 조회 결과 수를 제한

SELECT *
FROM Customers
LIMIT 5;

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 5;

SELECT *
FROM Employees
ORDER BY BirthDate DESC
LIMIT 2;

SELECT *
FROM Products
WHERE CategoryID = 1
ORDER BY Price
             LIKE 3;

SELECT *
FROM Orders
ORDER BY OrderDate
LIMIT 1;

SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 5;

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1;

SELECT *
FROM Products
WHERE CategoryID = 3
ORDER BY Price DESC
LIMIT 2;

# LIMIT OFFSET, 5
# OFFSET 부터 5개

SELECT *
FROM Products
WHERE CategoryID = 3
ORDER BY Price DESC
LIMIT 0, 2;

# 5개부터 10개
SELECT *
FROM Products
ORDER BY Price
LIMIT 5, 10;

# paging - 게시판 페이지 나눌 때 사용

# 1 PAGE에 10개씩 조회할 때
#1PAGE : LIMIT 0, 10
SELECT CustomerID, CustomerName
FROM Customers
ORDER BY CustomerID
LIMIT 0, 10;

# 2PAGE : LIMIT 10, 10
SELECT CustomerID, CustomerName
FROM Customers
ORDER BY CustomerID
LIMIT 10, 10;

# 3PAGE : LIMIT 20, 10
SELECT CustomerID, CustomerName
FROM Customers
ORDER BY CustomerID
LIMIT 20, 10;

# N-PAGE : LIMIT (N-1)*한페이의게시물수, 한페이지의게시물수

