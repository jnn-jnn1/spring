USE w3schools;

# BETWEEN 최소값 AND 최대값
# 최소값 최대값 사이이면 TRUE (최소값과 최대값 포함)

SELECT *
FROM Products
WHERE Price >= 10.00
  AND Price <= 20.00;

SELECT *
FROM Products
WHERE Price BETWEEN 10.00 AND 20.00;

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

SELECT *
FROM Employees
WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

DESC Orders;