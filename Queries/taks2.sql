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

--get me all employees who first name starts with C
SELECT * FROM EMPLOYEES WHERE FIRST_NAME like 'C%';
--get me 5 letters first names where the middle char is z;
SELECT *FROM EMPLOYEES WHERE FIRST_NAME like '__z__';
-- get me first name where second char is u;
SELECT *FROM EMPLOYEES
WHERE FIRST_NAME like '_u%';

SELECT*from EMPLOYEES;
--find me minimum salary
SELECT MIN(SALARY) from EMPLOYEES;
--find me max avg salary
SELECT MAX(SALARY) FROM EMPLOYEES;
--Round
SELECT ROUND(avg(SALARY) ,2 )FROM EMPLOYEES;

SELECT sum(SALARY) FROM EMPLOYEES;




--
