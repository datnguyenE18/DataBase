ALTER TABLE borrower 
	ADD COLUMN first_name VARCHAR(100) NOT NULL,
    ADD COLUMN last_name VARCHAR(100) NOT NULL;
ALTER TABLE borrower
	DROP COLUMN full_name;

INSERT INTO borrower
VALUES(1, 'Duyen', 'Nguyen'),(2, 'Nam', 'Bui'),(4, 'Yen', 'Luyen');