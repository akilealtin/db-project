--how can we rename the column  that we displayed
select FIRST_NAME as "given_name" ,LAST_NAME as "surname"
from EMPLOYEES;
--text functions, string mani
--java first_name+""+last_name
--in sql concat is \\
select FIRST_NAME ||' '||LAST_NAME as "full_name"
from EMPLOYEES;

--task;
--add @gmail.com and new name column to fill email
SELECT EMAIL from EMPLOYEES;

select EMAIL||'gmail.com'as "full_email"
From EMPLOYEES;

--making employees
select upper(EMAIL||'gmail.com')as "full_email"
from EMPLOYEES;

--lenght(value)
select FIRST_NAME ,length(FIRST_NAME)as "length_name"
from EMPLOYEES
order by "length_name"desc ;

--substr(colNAme,begIndex,numberOfChar)

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)as "initials"
from EMPLOYEES ;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)as "initials",
FIRST_NAME ||' '||LAST_NAME as "full_name",lower(EMAIL||'gmail.com')as "full_email"
from EMPLOYEES ;

--VIEW
CREATE VIEW Emaillist2 as select substr(FIRST_NAME,0,1)||'.' ||substr(last_NAME,0,1) as"initials",
FIRST_NAME||' '|| LAST_NAME as "full_name",lower (email||'@gmail.com')as "full_email"
From EMPLOYEES;

select "full_name"
from Emaillist2;

select "full_name"
from EMAILLIST_AKILE;

--to remove view
drop view EMAILLIST_AKILE;








