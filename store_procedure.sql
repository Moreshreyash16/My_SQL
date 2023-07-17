DELIMITER //

CREATE PROCEDURE Print_employee(dept varchar(10))
BEGIN
    SELECT * FROM employees WHERE department=dept;
END //

DELIMITER ;

CALL Print_employee('IT')
