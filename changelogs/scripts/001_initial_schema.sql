--liquibase formatted sql

--changeset parag:1
CREATE TABLE employee (
    id INT IDENTITY PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

--rollback DROP TABLE employee;

