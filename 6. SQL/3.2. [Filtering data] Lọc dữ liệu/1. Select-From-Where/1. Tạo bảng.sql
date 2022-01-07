CREATE TABLE countries(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	name VARCHAR(50),
	continent VARCHAR(50),
	population VARCHAR(15)
);

INSERT INTO countries 
VALUES
	(1, 'Austria', 'Europe', '8767919'),
    (2, 'Belize', 'North America', '375909'),
    (3,'Botswana', 'Africa', '2230905'),
    (4, 'Cambodia',	'Asia', '15626444'),
    (5, 'Cameroon',	'Africa', '22709892');