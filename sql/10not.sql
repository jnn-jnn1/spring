USE w3schools;

# not : 조건을 만족하지 않으면 TRUE

SELECT *
FROM Employees
WHERE NOT BirthDate >= '1960-01-01';
# 1960년대 이전 출생자 출력

SELECT *
FROM Customers
WHERE Country NOT IN ('France', 'UK', 'Spain')
ORDER BY Country;

SELECT *
FROM Products
WHERE Price NOT BETWEEN 100 AND 200
ORDER BY Price;

# 여러 조건 사용시 괄호 잘 사용하기
SELECT *
FROM Products
WHERE NOT (CategoryID = 1
    AND Price > 50)
ORDER BY CategoryID, Price;

SELECT *
FROM Orders
WHERE NOT OrderDate = '1997%';

SELECT *
FROM Suppliers
WHERE NOT (Country = 'USA' OR Country = 'UK');

SELECT *
FROM Suppliers
WHERE Country NOT IN ('uk, usa');