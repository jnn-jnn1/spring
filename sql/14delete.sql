USE w3schools;

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

# 지우기 전에 꼭! 같은 WHERE로 SELECT 해보기
DELETE
FROM Employees
WHERE EmployeeID = 2039;

DELETE
FROM Employees
WHERE FirstName = 'natasha';

# 모든 레코드 지우기 : WHERE 안쓰면 됨
# 매우 주의!!!

SELECT *
FROM Customers
WHERE CustomerID = 100;