ALTER TABLE employees 
	MODIFY COLUMN emp_id VARCHAR(7);
    
INSERT INTO employees(
    emp_id,
    emp_name,
    hire_date,
    salary,
    com
)
VALUES(
    'SE00001',
    'Marie',
    '2017-01-01',
    2000,
    0.03
),(
    'SE00002',
    'Harry',
    '2017-01-01',
    2000.55,
    0.03
),(
    'SE00003',
    'Maries',
    '2017-01-01',
    3000,
    0.03
),(
    'SE00004',
    'Ron',
    '2017-01-01',
    3000,
    0.03
),(
    '003',
    'Hermione',
    '2017-01-01',
    3000,
    0.03
);