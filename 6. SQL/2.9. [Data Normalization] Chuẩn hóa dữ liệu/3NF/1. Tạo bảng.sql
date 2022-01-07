CREATE TABLE bank(
    id SMALLINT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL
); 

CREATE TABLE loan(
    approval_date DATE NOT NULL,
    bank_id SMALLINT NOT NULL,
    bank_zip TEXT NOT NULL,
    borrower_id SMALLINT NOT NULL,
    gross_approval NUMERIC(10, 2) NOT NULL,
    max_amount NUMERIC(10, 2) NOT NULL,
    program TEXT NOT NULL,
    term_in_months SMALLINT,
    intial_interest_rate NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY(
        approval_date,
        bank_id,
        borrower_id
    ),
    FOREIGN KEY(bank_id) REFERENCES bank(id)
);