--liquibase formatted sql

--changeset parag:1 structure labels:core context:CR-010
--comment: Updated by parag
CREATE TABLE employee (
    id INT IDENTITY PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

--rollback DROP TABLE employee;
