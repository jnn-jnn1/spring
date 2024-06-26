# ThirdNormalForm (3NF, 제3정규화)

# 1) 2NF 이다
# 2) 키가 아닌 컬럼끼리 종속되면 안됨

USE mydb1;
DROP TABLE Phone_number;
DROP TABLE Customer;
DROP TABLE Customer_benefit;

CREATE TABLE Customer
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(3),
    last_name  VARCHAR(3),
    level      INT,
    FOREIGN KEY (level) REFERENCES Customer_benefit (level)
);

CREATE TABLE Customer_benefit
(
    level   INT PRIMARY KEY,
    benefit VARCHAR(100)
);
desc Customer;
INSERT INTO Customer
    (first_name, last_name, level)
VALUES ('son', 'hm', 1),
       ('lee', 'ki', 1),
       ('kim', 'hs', 2),
       ('lee', 'jh', 2),
       ('cap', 'ste', 3);

INSERT INTO Customer_benefit
    (level, benefit)
VALUES (1, '무료배송'),
       (2, '할인'),
       (3, '라운지');

SELECT *
FROM Customer;

SELECT *
FROM Customer_benefit;
