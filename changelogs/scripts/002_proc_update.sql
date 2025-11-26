--liquibase formatted sql

--changeset parag:2 structure labels:core context:CR-010
--comment: Updated parag
CREATE OR ALTER PROCEDURE update_employee_email
    @id INT,
    @newEmail VARCHAR(100)
AS
BEGIN
    UPDATE employee SET email = @newEmail WHERE id = @id;
END;

--rollback DROP PROCEDURE update_employee_email;
