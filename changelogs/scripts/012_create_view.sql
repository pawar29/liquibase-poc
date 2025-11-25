--liquibase formatted sql

--changeset parag:12
CREATE VIEW vw_employee_basic AS
SELECT id, name, email
FROM employee;

--rollback DROP VIEW vw_employee_basic;

