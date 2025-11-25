--liquibase formatted sql

--changeset parag:13
CREATE OR ALTER VIEW vw_employee_basic AS
SELECT id, name, email, phone  -- added the phone field
FROM employee;

--rollback
CREATE OR ALTER VIEW vw_employee_basic AS
SELECT id, name, email
FROM employee;

