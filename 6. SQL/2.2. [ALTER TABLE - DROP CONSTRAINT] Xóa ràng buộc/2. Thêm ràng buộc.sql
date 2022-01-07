ALTER TABLE employees
ADD CONSTRAINT chk_birthdate CHECK ( birth_date < '1900-01-01' ),
ADD CONSTRAINT chk_joineddate CHECK ( joined_date < birth_date ),
ADD CONSTRAINT chk_salary CHECK ( salary < 0 );