USE w3schools;

# HAVING : 집계함수의 조건절

SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

# 상품 수가 10개 이상인 카테고리

SELECT *
FROM (SELECT CategoryID, COUNT(ProductID) 상품수
      FROM Products
      GROUP BY CategoryID) c
WHERE 상품수 >= 10;

SELECT Products.CategoryID, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

# 고객이 5명 이상 있는 국가들 조회
SELECT Country, COUNT(CustomerID) 고객수
FROM Customers
GROUP BY Country
HAVING 고객수 >= 5
ORDER BY 고객수 DESC;

# 97년 7월 매출액이 10000달러 이상인 직원들 조회
SELECT e.LastName, e.FirstName, SUM(p.Price * od.Quantity) sumOfOrders
FROM Employees e
         JOIN Orders o ON o.EmployeeID = e.EmployeeID
         JOIN OrderDetails od ON od.OrderID = o.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY e.EmployeeID
HAVING sumOfOrders >= 10000
ORDER BY sumOfOrders DESC;