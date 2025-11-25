--liquibase formatted sql

--changeset parag:8
CREATE OR ALTER PROCEDURE broken_proc
AS
BEGIN
    SELECT FROM employee;   -- ❌ INVALID SQL (missing column list)
END;

--rollback DROP PROCEDURE broken_proc;

