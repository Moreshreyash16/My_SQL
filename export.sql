SELECT *
INTO OUTFILE 'D:/vscode/Bridgelabz/sql/employe.sql'
FROM python_db.employees;


LOAD DATA INFILE 'D:/vscode/Bridgelabz/sql/employe.sql'
INTO TABLE employees;
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;