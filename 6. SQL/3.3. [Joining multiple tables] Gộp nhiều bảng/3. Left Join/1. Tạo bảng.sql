CREATE TABLE users(
	id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	city VARCHAR(50)
);

INSERT INTO users
VALUES
	(1,	'San Francisco'),
	(2,	'Moscow'),
	(3,	'London'),
    (4,	'Washington'),
    (5,	'New York'),
    (6,	'Saint Petersburg'),
    (7,	'Helsinki')

CREATE TABLE cities(
	city VARCHAR(50),
	country VARCHAR(50)
);

INSERT INTO cities
VALUES
	('Moscow','Russia'),
    ('Saint Petersburg', 'Russia'),
    ('San Francisco', 'USA'),
    ('Washington', 'USA'),
    ('New York', 'USA'),
    ('London', 'England')

