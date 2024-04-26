USE mydb2;

# LEFT (OUTER) JOIN
# INNER JOIN + 왼쪽 테이블에만 레코드

# 1, 2, 3, 4
SELECT *
FROM table1;

# 2, 2, 3, 4, 5
SELECT *
FROM table2;

#OUTER는 생략 가능
SELECT *
FROM table1
         LEFT OUTER JOIN table2 ON col1 = col2;

DELETE
FROM table2;

INSERT INTO table1
VALUES (1),
       (2),
       (2),
       (3),
       (4);

INSERT INTO table2
VALUES (3),
       (4),
       (5),
       (5);

SELECT *
FROM table1
         LEFT JOIN table2 ON col1 = col2;

SELECT *
FROM table2
         LEFT JOIN table1 ON col1 = col2;

DELETE
FROM table4;

INSERT INTO table3
VALUES (4),
       (5),
       (6),
       (3);

INSERT INTO table4
VALUES (5),
       (6),
       (7),
       (7),
       (8);

SELECT *
FROM table3
         JOIN table4;

SELECT *
FROM table3
         JOIN table4 ON col1 = col2;

SELECT *
FROM table3
         LEFT JOIN table4 ON col1 = col2;

SELECT *
FROM table4
         LEFT JOIN table3 ON col1 = col2;

# RIGHT OUTER JOIN
SELECT *
FROM table3
         RIGHT JOIN table4 ON col1 = col2;

SELECT *
FROM table1
         RIGHT JOIN table2 ON col1 = col2;

SELECT *
FROM table2
         RIGHT JOIN table1 ON col1 = col2;
