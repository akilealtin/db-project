--get me all employees first_name,lastname and their managers first and lastname
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;
select e1.employee_id,e1.first_name,e1.last_name,e1.manager_id,e2.employee_id,e2.first_name,e2.last_name
FROM EMPLOYEES e1 left join EMPLOYEES e2
on e1.MANAGER_ID =e2.EMPLOYEE_ID;
