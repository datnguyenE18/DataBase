CREATE TABLE Movies(
	id SMALLINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	title VARCHAR(255),
	director VARCHAR(255),
	year VARCHAR(4),
	length_minutes SMALLINT
);

INSERT INTO Movies
VALUES
	(1, 'Toy Story', 'John Lasseter', '1995' ,81),
	(2, "A Bug's Life", 'John Lasseter', '1998', 95),
	(3,	'Toy Story 2', 'John Lasseter', '1999', 93),
	(4, 'Monsters, Inc.', 'Pete Docter', '2001', 92);

CREATE TABLE Boxoffice(
    movie_id SMALLINT,
    rating DECIMAL,
    domestic_sales VARCHAR(25),
    international_sales VARCHAR(25),
    FOREIGN KEY(movie_id) REFERENCES movies(id)
);

INSERT INTO Boxoffice
VALUES
	(1, 8.3,	'191796233',	'170162503'),
	(2, 7.2,	'162798565',	'200600000'),
	(3, 7.9,	'245852179',	'239163000'),
	(4, 8.1,	'289916256',	'272900000')