--liquibase formatted sql

--changeset parag:1 structure labels:core context:CR-010
--comment: Updated parag
CREATE TABLE employee (
    id INT IDENTITY PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

--rollback DROP TABLE employee;
