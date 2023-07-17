-- DDL - Create table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

INSERT INTO employees (id, name, age, department)
VALUES (1, 'shreyash', 22, 'IT'),
       (2, 'Anish', 23, 'I'),
       (3, 'shriyansh', 28, 'Marketing');

-- Alter table - Add a new column
ALTER TABLE employees ADD salary DECIMAL(10, 2);

select * from employees;

desc employees
-- DDL - Drop table
-- DROP TABLE employees;
