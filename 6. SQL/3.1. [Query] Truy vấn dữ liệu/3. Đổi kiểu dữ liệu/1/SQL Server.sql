CREATE TABLE transactions (
    transaction_date DATE,
    amount TEXT,
    fee TEXT
);

INSERT INTO transactions(transaction_date, amount, fee)

VALUES ('1999-01-08', '500', '20'),
        ('1999-01-07', '403', '30'),
        ('1999-02-08', '3430', '30'),
        ('1999-03-08', '5454', '40'),
        ('1999-04-08', '1254', '10');

--Explicit conversion from data type text to int is not allowed.
/** TextValue to Int direct Conversion is not possible, so

    convert TextValue to varchar(max)
    varchar(max) to int or bigint
*/

SELECT
transaction_date,
CONVERT(INT, (CONVERT(VARCHAR(15), amount))) + CONVERT(INT, (CONVERT(VARCHAR(15), fee))) AS net_amount
FROM 
transactions;