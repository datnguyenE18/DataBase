CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(10),
    hire_date DATE DEFAULT '2017-01-01',
    salary DECIMAL(7, 2),
    com DECIMAL(7, 2) DEFAULT 0.03
); INSERT INTO employees(emp_name, salary)
VALUES('Marie', 2000);
INSERT INTO employees(emp_name, salary)
VALUES('Snoop', 2000.55);
INSERT INTO employees(emp_name, salary)
VALUES('Maries', 3000);
INSERT INTO employees(emp_name, salary)
VALUES('Nguyen', 2000);
INSERT INTO employees(emp_name, salary, com)
VALUES('Taylor', 1700, 0.05);
INSERT INTO employees(emp_name, salary, com)
VALUES('Drago', 1800, 0.01);
INSERT INTO employees(emp_name, salary)
VALUES('Drayon', 1900);