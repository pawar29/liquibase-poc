--liquibase formatted sql

--changeset parag:10
CREATE OR ALTER PROCEDURE get_employee_by_id
    @empId INT
AS
BEGIN
    SELECT id, name, email, phone, company_name
    FROM employee
    WHERE id = @empId;
END;

--rollback DROP PROCEDURE get_employee_by_id;

