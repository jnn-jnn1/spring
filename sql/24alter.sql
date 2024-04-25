USE w3schools;

# ALTER TABLE : 테이블 구조 변경

# 컬럼 추가
CREATE TABLE my_table23
(
    name VARCHAR(3),
    age  INT
);
INSERT INTO my_table23
    (name, age)
VALUES ('son', 44),
       ('lee', 33);

ALTER TABLE my_table23
    ADD COLUMN address VARCHAR(10) NOT NULL;

SELECT *
FROM my_table23;

ALTER TABLE my_table23
    ADD COLUMN city VARCHAR(10);

# 컬럼 삭제 (주의!!)
ALTER TABLE my_table23
    DROP COLUMN city;

# 컬럼 변경
# 이름변경, 자로형/제약사항 변경
ALTER TABLE my_table23
    RENAME COLUMN address to town;

DESC my_table23;

ALTER TABLE my_table23
    ADD COLUMN birth date;

ALTER TABLE my_table23
    RENAME COLUMN birth TO birth_date;

ALTER TABLE my_table23
    ADD COLUMN price INT;

# 자료형 변경
ALTER TABLE my_table23
    MODIFY COLUMN price DEC(20, 2);

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(30);

# 타입 변경시 주의할 점 : 데이터를 잃어버리지 않도록 해야 함
# 저장된 데이터보다 범위가 작으면 오류 발생

DESC my_table23;

#제약사항 변경
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) UNIQUE;

ALTER TABLE my_table23
    MODIFY COLUMN age INT UNIQUE;

# UNIQUE 제약사항 삭제하기
SHOW index FROM my_table23;

ALTER TABLE my_table23
    DROP INDEX age;

DESC my_table23;

ALTER TABLE my_table23
    DROP INDEX name;

# NOT NULL 추가
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NOT NULL;

# NOT NULL 삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;

ALTER TABLE my_table23
    MODIFY COLUMN age INT NOT NULL;

ALTER TABLE my_table23
    MODIFY COLUMN age INT NULL;

SELECT *
FROM my_table23
WHERE age IS NULL;

# DEFAULT 제약사항 추가/삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) DEFAULT 'anonymous';

ALTER TABLE my_table23
    ALTER COLUMN name DROP DEFAULT;

ALTER TABLE my_table23
    MODIFY COLUMN age INT DEFAULT 0;

ALTER TABLE my_table23
    ALTER COLUMN age DROP DEFAULT;

DESC my_table23;

# PRIMARY KEY 추가
ALTER TABLE my_table23
    ADD PRIMARY KEY (name);

ALTER TABLE my_table23
    DROP PRIMARY KEY;
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;

ALTER TABLE my_table23
    ADD PRIMARY KEY (age);

ALTER TABLE my_table23
    DROP PRIMARY KEY;

ALTER TABLE my_table23
    MODIFY COLUMN age INT NULL;

DESC my_table23;