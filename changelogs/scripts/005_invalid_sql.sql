--liquibase formatted sql

--changeset parag:5
ALTER TABLE employee 
ADD invalid column_name VARCHAR(50);  -- ❌ syntax error

--rollback ALTER TABLE employee DROP COLUMN column_name;

