-- Add a new column called 'zip' to the 'bank' table 
ALTER TABLE bank
ADD COLUMN zip varchar(10) not null default 'TBD';

-- Remove a corresponding column from 'loan' to satisfy 2NF
ALTER TABLE loan
DROP COLUMN bank_zip;

--Show all the columns of loan and bank table using INNER JOIN
SELECT * FROM loan l  
INNER JOIN  bank b ON b.id = l.bank_id 
ORDER BY approval_date, bank_id;