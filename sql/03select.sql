USE w3schools;
SELECT CustomerName, City -- 컬럼명 나열
FROM Customers;
SELECT Country
FROM Customers;
-- 91 records

-- DISTINCT : 중복 제거
SELECT DISTINCT Country
FROM Customers;

-- 모두 공통인 중복 제거
SELECT DISTINCT City, Country
FROM Customers;

-- COUNT : 레코드 수 구하는 내장 함수
SELECT COUNT(City)
FROM Customers;

SELECT COUNT(DISTINCT City)
FROM Customers;