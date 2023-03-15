select CUSTOMER_ID,FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS.ADDRESS_ID address,PHONE
from CUSTOMER left outer join ADDRESS
on CUSTOMER.ADDRESS_ID = address.ADDRESS_ID
WHERE ADDRESS.ADDRESS_ID is null ;

select * from CUSTOMER FULL OUTER JOIN ADDRESS
on CUSTOMER.ADDRESS_ID = address.ADDRESS_ID
WHERE CUSTOMER.ADDRESS_ID is null or ADDRESS.ADDRESS_ID is null ;

--get me first_name ,last_name and department name for all employees
select *from EMPLOYEES;
select *from DEPARTMENTS;

select FIRST_NAME ,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null ; --kimin departman id yoksa onu gösteriyor

--get me first_name,last_name and department_name ,city for all employees
select FIRST_NAME ,LAST_NAME,DEPARTMENT_NAME,city
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

--get me firstname,lastname and department name ,city, country_name for all employees ;

SELECT FIRST_NAME ,LAST_NAME,DEPARTMENT_NAME,city,country_name
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID =d.DEPARTMENT_ID
join LOCATIONS L
on d.LOCATION_ID= l.location_id
join  COUNTRIES c
on c.COUNTRY_ID = l.COUNTRY_ID










