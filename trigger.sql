CREATE TABLE backup_employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);
DELIMITER //
CREATE TRIGGER t1
BEFORE DELETE
ON employees
FOR EACH ROW
BEGIN
    INSERT INTO backup_employee (id, name, age, department)
    VALUES (OLD.id, OLD.name, OLD.age, OLD.department);
END//
DELIMITER ;

select * from backup_employee;
delete from employees WHERE id=4; 
INSERT INTO employees (id, name, age, department)
VALUES 
       (5, 'Sushant', 23, 'IT Support');
select * from backup_employee;
