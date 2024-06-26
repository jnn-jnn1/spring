USE w3schools;

# 제약사항 constraints
# 특정의 컬럼에 제약사항을 줌 (예 : 꼭 값이 있어야 함, 기본값, 중복불가)

# NOT NULL : 꼭 값이 있어야 함
CREATE TABLE my_table11
(
    col1 VARCHAR(10),
    co12 VARCHAR(10) NOT NULL
);

DESC my_table11;
INSERT INTO my_table11
    (col1, co12)
VALUES ('value', 'value');

# 오류 발생
INSERT INTO my_table11
    (col1)
VALUES ('value');

# 해당 컬럼에 값이 없는 레코드 조회
SELECT *
FROM my_table11
WHERE col1 IS NULL;

# 해당 컬럼에 값이 있는 레코드 조회
SELECT *
FROM my_table11
WHERE col1 IS NOT NULL;

#NULL과의 연산은 모두 FALSE
# col1 != NULL, col1 <> NULL

