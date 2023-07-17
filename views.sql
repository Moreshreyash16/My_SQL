create view view_name as 
select name,age
from name_table;
select * from view_name;

CREATE VIEW complex_view AS
SELECT n.id, n.name, n.age, e.email
FROM name_table n
JOIN email_table e ON n.id = e.id;
select * from complex_view;