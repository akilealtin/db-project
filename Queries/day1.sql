-- I want to see firstname last name phone number of david (S) ;
select FIRST_NAME ,LAST_NAME,PHONE_NUMBER from EMPLOYEES
WHERE FIRST_NAME ='David'and LAST_NAME = 'Lee';

--get me all information who is making more than 7000 salary
SELECT * from EMPLOYEES
WHERE SALARY >700;

--get me email of who is making less than 4000
SELECT EMAIL from EMPLOYEES
WHERE SALARY<4000;

--get me all info who is working IT_PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID ='IT_PROG' or JOB_ID ='SA_REP';

--get me first name last name salary who is making more than 5000 and less than 10000
SELECT FIRST_NAME,LAST_NAME ,SALARY from EMPLOYEES
WHERE SALARY >= 5000 and SALARY<=10000;

SELECT FIRST_NAME,LAST_NAME ,SALARY from EMPLOYEES
WHERE SALARY between 5000 and 10000;

SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID between 130 and 170;

----get me all info where employee_id 135 176 150 129
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID =135 or EMPLOYEE_ID =176 or EMPLOYEE_ID =154 or EMPLOYEE_ID =129;
-- another way
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID in (135,176,154,129);

-- get me city of where country_id IT,US,UK
SELECT CITY from LOCATIONS
WHERE COUNTRY_ID in('IT','US','UK');


