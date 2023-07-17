use python_db;
-- crud operation
-- create
create table students(stud_id int(10) NOT NULL  , PRIMARY KEY(stud_id)  ,stud_fname varchar(20),stud_lname varchar(20),stud_roll int(5));
insert into students(stud_id,stud_fname,stud_lname,stud_roll) values (2,"Anish","Joshi",06),(3,"Rahul","Gaikwad",20);

-- Read 
select * from students where stud_fname="shreyash";

-- update
update students set stud_roll=16 where stud_fname="shreyash";
select * from students;

-- delete
delete from students where stud_fname="Rahul";
select * from students;











