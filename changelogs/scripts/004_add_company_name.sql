--liquibase formatted sql

--changeset parag:4
ALTER TABLE employee ADD company_name VARCHAR(150);
--rollback ALTER TABLE employee DROP COLUMN company_name;

