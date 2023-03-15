/*
 create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
 */
 CREATE TABLE ScrumTeam(
     EMP_ID INTEGER PRIMARY KEY ,
     FirstName varchar(30) not null,
     LastName varchar(30),
     JopTitle VARCHAR(20)
 );
select *FROM ScrumTeam;

/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

INSERT INTO ScrumTeam(emp_id, firstname, lastname, joptitle)
VALUES (1,'Kerime','Unal','Tester');

INSERT INTO ScrumTeam values (2,'Akile','Altin','Tester');
INSERT INTO ScrumTeam values (3,'Mustafa','Altin','Forester');
INSERT INTO ScrumTeam values (4,'Nurcan','Altin','Teacher');

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

UPDATE ScrumTeam
SET JOPTITLE = 'Tester'
WHERE emp_id = 2;

--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/

DELETE FROM ScrumTeam
WHERE emp_id = 2;

Select *from ScrumTeam;
--adding new column
ALTER TABLE  ScrumTeam ADD salary INTEGER ;
--update existing employees salary
UPDATE ScrumTeam SET salary =100000 where emp_id =1;
UPDATE ScrumTeam SET salary =100000 where emp_id =2;
UPDATE ScrumTeam SET salary =100000 where emp_id =4;


---rename the column
ALTER table ScrumTeam RENAME COLUMN salary to annual_salary;

--delete or drop the column
ALTER TABLE ScrumTeam DROP COLUMN annual_salary;

--how to change table name ?
ALTER TABLE ScrumTeam RENAME TO agileteam;
select *from agileteam;

--truncate , if we want to delete all data from the table ,but still keep the table structure ,we use truncate
TRUNCATE TABLE agileteam;
-- if we want to delete the table and data together
DROP TABLE agileteam;









