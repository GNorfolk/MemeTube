DROP TABLE IF EXISTS memes;

CREATE TABLE memes (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	description TEXT,
	url VARCHAR,
	genre VARCHAR
);

INSERT INTO post (title, description, url, genre) VALUES ('HeyYeahYeahYeahYeah', 'This is the description', 'Ww8s3vihzMg', 'Song');
INSERT INTO post (title, description, url, genre) VALUES ('Amazing Horse', 'This is the description', 'OWFBqiUgspg', 'Song');
INSERT INTO post (title, description, url, genre) VALUES ('CSGO Shooting Stars', 'This is the description', 'J3ZO33UxOFY', 'Shooting stars');
INSERT INTO post (title, description, url, genre) VALUES ('Keyboard Cat', 'This is the description', 'J---aiyznGQ', 'Cat video');
INSERT INTO post (title, description, url, genre) VALUES ('Numa Numa', 'This is the description', 'KmtzQCSh6xk', 'Song');