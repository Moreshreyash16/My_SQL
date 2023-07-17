-- CURRENT_DATE: Returns the current date
SELECT CURRENT_DATE();

-- CURRENT_TIME: Returns the current time
SELECT CURRENT_TIME();

-- CURRENT_TIMESTAMP: Returns the current date and time
SELECT CURRENT_TIMESTAMP();

-- DATE: Extracts the date part from a datetime value
SELECT DATE(NOW());

-- TIME: Extracts the time part from a datetime value
SELECT TIME(NOW());

-- EXTRACT: Extracts a specific component from a datetime value
SELECT EXTRACT(YEAR FROM NOW()) AS year,
       EXTRACT(MONTH FROM NOW()) AS month,
       EXTRACT(DAY FROM NOW()) AS day;

-- DATE_ADD: Adds a specified interval to a datetime value
SELECT DATE_ADD(NOW(), INTERVAL 7 DAY);

-- DATE_SUB: Subtracts a specified interval from a datetime value
SELECT DATE_SUB(NOW(), INTERVAL 1 HOUR);

-- DATEDIFF: Calculates the difference between two dates
SELECT DATEDIFF('2023-01-01', '2022-07-05');

-- DATE_FORMAT: Formats a date or time value
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s') as format_date;
