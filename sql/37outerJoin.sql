USE mydb2;

# 상품이 존재하지 않는 카테고리를 알 수 있음
SELECT *
FROM category c
         LEFT JOIN product p ON c.id = p.category_id
WHERE p.id IS NULL;

USE w3schools;

# 한  번도 주문한 적 없는 고객의 이름을 조회
SELECT c.CustomerName
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

# 1996년에 주문한 적 있는 고객들 이름
SELECT DISTINCT c.CustomerName
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate LIKE '1996%'
ORDER BY c.CustomerName;

SELECT DISTINCT c.CustomerName
FROM Customers c
         LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

DELETE
FROM Orders
WHERE OrderDate >= '1997-01-01';

INSERT INTO Employees
    (LastName, FirstName)
VALUES ('흥민', '손'),
       ('강인', '이');

# 한 번도 주문을 처리한 적 없는 직원 조회
SELECT e.LastName, e.FirstName
FROM Employees e
         LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.OrderID IS NULL;

