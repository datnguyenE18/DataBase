-- Alter the 'loan' table to satisfy 3NF
ALTER TABLE loan drop column max_amount;

-- Show all columns of 'loan' table
SELECT * FROM loan;