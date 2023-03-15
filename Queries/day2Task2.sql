--find the highest 14th salary
--list salary high to low without dublicate values
select min(SALARY)
from (select distinct SALARY from EMPLOYEES
order by SALARY desc)
where rownum<15;
--find the employee info who is making 14th highest salary(with dublicates)
select *
from EMPLOYEES
where SALARY =(select min(SALARY)
               from (select distinct SALARY from EMPLOYEES
                     order by SALARY desc)
               where rownum<15);



