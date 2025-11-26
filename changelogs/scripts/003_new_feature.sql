--liquibase formatted sql

--changeset parag:3 structure labels:core context:CR-010
--comment: Updated parag
ALTER TABLE employee ADD phone VARCHAR(20);

--rollback ALTER TABLE employee DROP COLUMN phone;

