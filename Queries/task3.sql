--get me unique JOP_ids
SELECT DISTINCT JOB_ID from EMPLOYEES;

--get me average salary for IT_PROG
SELECT AVG(SALARY)
FROM EMPLOYEES
WHERE JOB_ID='AC_ACCOUNT';
--get me average salary for each jop_ıd
SELECT JOB_ID ,avg(SALARY),count(*),sum(SALARY)from EMPLOYEES GROUP BY JOB_ID;
--get me jop_İDS where their avg salary is more than 5k
SELECT JOB_ID,avg(SALARY),Count(*),sum(SALARY)
FROM EMPLOYEES
group by JOB_ID
HAVING avg(SALARY)>5000;

SELECT JOB_ID,avg(SALARY),Count(*),sum(SALARY)
FROM EMPLOYEES
Where SALARY >5000
group by JOB_ID;


