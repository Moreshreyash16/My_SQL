DELIMITER //

CREATE PROCEDURE HandleException(e_id INT)
BEGIN
    DECLARE e_name VARCHAR(20);
    DECLARE output TEXT;
    
    DECLARE EXIT HANDLER FOR NOT FOUND
    BEGIN
        SET output = 'NO SUCH CUSTOMER';
    END;

    SELECT name INTO e_name FROM employees WHERE id = e_id;

    IF e_name IS NOT NULL THEN
        SET output = CONCAT('Name: ', e_name);
    END IF;

    SELECT output;
END //

DELIMITER ;
select * from employees;
CALL HandleException(4);

