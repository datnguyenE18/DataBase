CREATE TABLE employees(
	id SMALLINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(50),
	role VARCHAR(50),
	years_employed SMALLINT,
	building VARCHAR(50)
);

INSERT INTO employees
VALUES
	(1, 'Becky A.', 'Engineer', 4, '1e'),
    (2, 'Dan B.', 'Engineer', 2, '2f'),
    (3, 'Sharon F.', 'Engineer', 6, '2f'),
    (4, 'Dan M.', 'Engineer', 4, '1e');