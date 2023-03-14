--how to find employees information of who is making highest salary in the company
--get me highest salary
SELECT max(SALARY)FROM EMPLOYEES;
--highest salary employees information
select *
from EMPLOYEES
where SALARY=11000;
--subquery solution in one shot
select *
from EMPLOYEES
where SALARY=(select max(SALARY)from EMPLOYEES);

--finding second highest salary
--get highest salary first
select max(SALARY) from EMPLOYEES;
--highest after 24K
select max(SALARY)
from EMPLOYEES
where SALARY<24000;

--one shot combining two queries
select max(SALARY)
from EMPLOYEES
where SALARY<(select max(SALARY)FROM EMPLOYEES);

--employee information of who is second highest salary
SELECT *
from EMPLOYEES
WHERE SALARY=(select max(SALARY)from EMPLOYEES where SALARY<(select max(SALARY)FROM EMPLOYEES));
---------------------
select *from EMPLOYEES
    order by SALARY desc ;
select *
from EMPLOYEES
where ROWNUM<11;

--list the employess who is making top 10 salary
--get the 10 people then order them high to low based on salary
select *
from EMPLOYEES
where ROWNUM<11
order by SALARY desc ;

--order all employees based on salary high to low then display only first 10 result
select *
from (select *from EMPLOYEES order by SALARY desc )
where ROWNUM<6;







