--liquibase formatted sql

--changeset parag:7
-- Insert a row that violates the FK BEFORE adding FK
INSERT INTO employee (name, email, phone, company_name, manager_id)
VALUES ('John Test', 'john@test.com', '123456', 'ABC', 999);  
-- 999 does NOT exist in employee.id → this will cause FK failure

-- Try adding FK
ALTER TABLE employee 
ADD CONSTRAINT fk_manager FOREIGN KEY (manager_id)
REFERENCES employee(id);

--rollback ALTER TABLE employee DROP CONSTRAINT fk_manager;

