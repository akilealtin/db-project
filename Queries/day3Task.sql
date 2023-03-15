SELECT *FROM Customer;
SELECT *FROM address;
SELECT first_name,last_name,customer.address_id,address,phone
FROM Customer C left join address a
on c.address_id =a.adress.address_id;

SELECT first_name,last_name,customer.address_id,address,phone
FROM Customer C right join address a
on c.address_id =a.adress.address_id;

