CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

INSERT INTO employees (id, name, age, department)
VALUES (1, 'shreyash', 22, 'IT'),
       (2, 'Anish', 23, 'IT'),
       (3, 'shriyansh', 28, 'Marketing');
INSERT INTO employees (id, name, age, department)
VALUES (4, 'rahul', 21, 'Consulting'),
       (5, 'Sushant', 23, 'IT Support'),
       (6, 'Bhagyesh', 24, 'Digital-Marketing');

commit;
CREATE	USER 'shreyash'@'localhost' identified by 'shreyash123';

-- Grant SELECT and INSERT privileges on a table to a user
GRANT INSERT ON employees TO 'shreyash'@'localhost';

revoke select ON employees from 'shreyash'@'localhost';

commit;
rollback;


