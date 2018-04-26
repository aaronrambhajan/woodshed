DROP SCHEMA IF EXISTS woodshed CASCADE;
CREATE SCHEMA woodshed;
SET SEARCH_PATH to woodshed;

CREATE TABLE exercise(
	id INT primary key,
	title VARCHAR(50) NOT NULL,
	tempo INT NOT NULL,
	description VARCHAR(500)
);

CREATE TABLE sessions(
	eID INT REFERENCES exercise(id),
	sessionTempo INT NOT NULL
);