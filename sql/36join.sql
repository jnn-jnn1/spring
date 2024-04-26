USE w3schools;

SELECT p.ProductName, c.CategoryName
FROM Products p
         JOIN Categories c ON c.CategoryID = p.CategoryID
WHERE p.ProductID = 1;

SELECT p.ProductName  '상품의 이름',
       s.SupplierName '공급자 이름',
       s.Country      '공급자의 국가'
FROM Products p
         JOIN Suppliers s ON s.SupplierID = p.SupplierID
WHERE ProductID = 10;

SELECT Customers.CustomerName
FROM Customers
         JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID = 10249;

SELECT e.LastName, e.FirstName
FROM Employees e
         JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.OrderID = 10249;

SELECT s.ShipperName
FROM Shippers s
         JOIN Orders o ON o.ShipperID = s.ShipperID
WHERE o.OrderID = 10249;

SELECT c.CustomerName, o.OrderDate
FROM Customers c
         JOIN Orders o ON o.CustomerID = c.CustomerID
WHERE c.CustomerID = 90
ORDER BY o.OrderDate;

SELECT e.FirstName, e.LastName, o.OrderDate
FROM Employees e
         JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE e.EmployeeID = 3
ORDER BY o.OrderDate;