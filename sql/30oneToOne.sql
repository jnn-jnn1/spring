USE mydb1;

CREATE TABLE employee
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(10),
    address VARCHAR(10)
);

CREATE TABLE employee_salary
(
    employee_id INT PRIMARY KEY REFERENCES employee (id),
    salary      INT
);

DROP TABLE employee;