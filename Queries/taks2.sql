--get me all info who is working as IT_PROG or SA_REP
SELECT *FROM EMPLOYEES
WHERE JOB_ID in('IT_Prog','SA_REP');

--how many employee are  working as IT_PROG or SA_REP
SELECT COUNT(*) FROM EMPLOYEES
WHERE JOB_ID in ('IT_Prog','SA_REP');
--how many employees making more than 8000
SELECT count(*) from EMPLOYEES
WHERE SALARY>8000;
--How many unique first name we have ?
SELECT count(DISTINCT FIRST_NAME)FROM EMPLOYEES;

-- get me all employees information based on who is making more salary to low salary
SELECT *from EMPLOYEES
order by SALARY desc ;
--desc 9-0 Z-A
--asc 0-9 a-z
-- get me all emp info order by alphabetical based on firstname
SELECT *FROM EMPLOYEES
order by FIRST_NAME;

