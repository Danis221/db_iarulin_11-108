ALTER TABLE client
    DROP COLUMN support_rep_id;

DROP TABLE staff;

ALTER TABLE client
    RENAME TO person;

ALTER TABLE person
    RENAME COLUMN client_id TO person_id;

CREATE TABLE role
(
    role_id bigint references person (person_id),
    role    VARCHAR(40)
);

INSERT INTO role (role_id, role)

VALUES (1, 'user'),
       (2, 'admin'),
       (2, 'user '),
       (1, 'singer');



