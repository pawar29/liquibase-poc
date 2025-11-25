--liquibase formatted sql

--changeset parag:1    -- ❌ same ID as initial schema
ALTER TABLE employee ADD test_col VARCHAR(10);

--rollback ALTER TABLE employee DROP COLUMN test_col;

