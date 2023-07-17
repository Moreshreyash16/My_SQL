-- Create the first table
CREATE TABLE name_table (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    table2_id INT,foreign key(table2_id) references email_table(id)
);

-- Create the second table
CREATE TABLE email_table (
    id INT PRIMARY KEY,
    email VARCHAR(100),
    address VARCHAR(200)
);

-- Insert values into table1
INSERT INTO name_table(id, name, age,table2_id)
VALUES (1, 'John', 25,1),
       (2, 'Jane', 30,2);


INSERT INTO email_table (id, email, address)
VALUES (1, 'john@example.com', '123 Main St'),
       (2, 'jane@example.com', '456 Elm St'),
       (3, 'michael@example.com', '789 Oak St');

select * from table2;
select * from table1 natural join table2;

select * from table1 inner join table2;

select* from table1 LEFT JOIN table2 on table1.table2_id=table2.id; 

select* from table1 right JOIN table2 on table1.table2_id=table2.id; 

select* from table1 full JOIN table2 ; 



