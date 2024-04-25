USE w3schools;

# UNIQUE : 다른 레코드의 컬럼 값이 중복되지 않음
CREATE TABLE my_table15
(
    col1 VARCHAR(3),
    col2 VARCHAR(3) UNIQUE
);

INSERT INTO my_table15
    (col1, col2)
VALUES ('abc', 'def');

INSERT INTO my_table15
    (col1, col2)
VALUES ('qwe', 'qwe');

# 오류 발생
INSERT INTO my_table15
    (col1, col2)
VALUES ('def', 'def');

# null 값은 중복 허용
INSERT INTO my_table15
    (col1)
VALUES ('qwe');

INSERT INTO my_table15
    (col1)
VALUES ('ert');

DESC my_table15;

SELECT *
FROM my_table15;

CREATE TABLE my_table16
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE,
    col3 VARCHAR(10) NOT NULL UNIQUE
);

INSERT INTO my_table16
    (col1, col2, col3)
VALUES ('abc', 'def', 'hij');
INSERT INTO my_table16
    (col1, col2, col3)
VALUES ('봉준호', '손흥민', 'BTS');
INSERT INTO my_table16
    (col1, col2, col3)
VALUES ('봉준호', '봉이김선달', '봉봉');