DROP TABLE IF EXISTS tasks;
  CREATE TABLE IF NOT EXISTS tasks(
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(20),
  description VARCHAR(50),
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  completed BOOLEAN
  );


ALTER TABLE tasks
  DROP IF EXISTS completed;

ALTER TABLE tasks
  ADD completed_at TIMESTAMP DEFAULT NULL;

ALTER TABLE tasks
  ALTER completed_at
  DROP DEFAULT;

ALTER TABLE tasks
  ALTER completed_at
  SET DEFAULT now();

INSERT INTO tasks
( id, title, description, created_at, updated_at, completed_at ) VALUES ( DEFAULT, 'Study SQL', 'Complete this exercise', now(), now(), NULL );

INSERT INTO tasks
(id, title, description, created_at, updated_at, completed_at) VALUES ( DEFAULT, 'Study PostgreSQL', 'Read all the documentation', now(), now(), null);

INSERT INTO tasks
(id, title, description, created_at, updated_at, completed_at) VALUES (DEFAULT, 'mistake 1', 'A test entry', now(), now(), null);

INSERT INTO tasks
(id, title, description, created_at, updated_at, completed_at) VALUES (DEFAULT, 'mistake 2', 'another test entry', now(), now(), null);

INSERT INTO tasks
(id, title, description, created_at, updated_at, completed_at) VALUES (DEFAULT, 'third mistake', 'another test entry', now(), now(), null);

SELECT *
FROM tasks
WHERE title LIKE '%mistake%';

DELETE
FROM tasks
WHERE id = 3;

SELECT *
FROM tasks;

SELECT *
FROM tasks
ORDER BY title ASC;

