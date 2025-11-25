--liquibase formatted sql

--changeset parag:6
ALTER TABLE employee ADD city VARCHAR(50);

--rollback ALTER TABLE employee REMOVE COLUMN city;  -- ❌ invalid SQL

