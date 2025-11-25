--liquibase formatted sql

--changeset parag:11
CREATE OR ALTER PROCEDURE get_employee_by_id
    @empId INT
AS
BEGIN
    SELECT id, name, email, phone, company_name,
           'ACTIVE' AS status
    FROM employee
    WHERE id = @empId;
END;

--rollback CREATE OR ALTER PROCEDURE get_employee_by_id\n    @empId INT\nAS\nBEGIN\n    SELECT id, name, email, phone, company_name\n    FROM employee\n    WHERE id = @empId;\nEND;

