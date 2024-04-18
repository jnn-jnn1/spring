USE w3schools;

# AND 여러조건 만족
# OR : 하나만 만족

SELECT *
FROM Products
WHERE ProductName LIKE 'A%'
   OR ProductName LIKE 'C%';

SELECT *
FROM Products
WHERE SupplierID = 1
  AND CategoryID = 1;

# WHERE 의 조건을 () 사용해서 우선순위 결정
SELECT *
FROM Products
WHERE SupplierID = 2
  AND (CategoryID = 2
    OR Price > 20);

SELECT *
FROM Customers
WHERE Country = 'UK'
   OR Country = 'USA';

SELECT *
FROM Customers
WHERE City = 'MADRID'
   OR City = 'LONDON';

SELECT *
FROM Orders
WHERE OrderDate LIKE '1997%'
  AND OrderDate LIKE '%05-__';

# 키워드가 customerName, contactName 에 있는 고객들 조회
SELECT *
FROM Customers
WHERE CustomerName LIKE '%BE%'
   OR CustomerName LIKE '%BE%';

