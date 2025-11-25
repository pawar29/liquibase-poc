--liquibase formatted sql

--changeset parag:3
ALTER TABLE employee ADD phone VARCHAR(20);

--rollback ALTER TABLE employee DROP COLUMN phone;

