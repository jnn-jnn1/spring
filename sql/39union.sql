# (INNER) JOIN
# LEFT (OUTER) JOIN
# RIGHT (OUTER) JOIN


# FULL OUTER JOIN -> MariaDB에 없음
# UNION
USE mydb2;

CREATE TABLE table10
(
    col1 INT
);

CREATE TABLE table11
(
    col_a INT
);

INSERT INTO table10
VALUES (3),
       (4),
       (4),
       (5);

INSERT INTO table11
VALUES (3),
       (4),
       (7);

SELECT *
FROM table10

UNION

SELECT *
FROM table11;

SELECT *
FROM table11
         LEFT JOIN table10
                   ON col1 = col_a

UNION

SELECT *
FROM table10
         LEFT JOIN table11
                   ON col1 = col_a;


#UNION ALL (중복제거 x)

SELECT *
FROM table11
         LEFT JOIN table10
                   ON col1 = col_a

UNION ALL

SELECT *
FROM table10
         LEFT JOIN table11
                   ON col1 = col_a