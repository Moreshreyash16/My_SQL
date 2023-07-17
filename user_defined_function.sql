DELIMITER //
CREATE FUNCTION percentage(stud_id INT)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE percent INT;
    SELECT ((Bee_marks + Maths2_marks + Mech_marks) / 300) * 100 INTO percent FROM marks WHERE id = stud_id;
    RETURN percent;
END//
DELIMITER ;
select  id ,name, percentage(id) as percentage from marks; 

