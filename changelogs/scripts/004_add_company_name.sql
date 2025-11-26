--liquibase formatted sql

--changeset parag:4 structure labels:core context:CR-010
--comment: Updated parag
ALTER TABLE employee ADD company_name VARCHAR(150);
--rollback ALTER TABLE employee DROP COLUMN company_name;

