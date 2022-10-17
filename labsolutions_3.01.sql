USE sakila
-- Drop column picture from staff.

ALTER TABLE staff
DROP COLUMN picture;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT * From staff;
INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id,active, username, password)
VALUES (3,'Tammy','Sanders',5,'TAMMY.SANDERS@sakilastaff.com',2,1,'Tammy','');


-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- customer_id = 130

select film_id, title from sakila.film where title = 'Academy Dinosaur';
-- film_id = 1

SELECT inventory_id, film_id from sakila.inventory where film_id = 1;
-- 8 inventory of the film 1-8

Select * from customer where first_name = 'Mike';
Select * from staff;
Select * from rental;
Insert into rental (rental_date, inventory_id, customer_id, staff_id)
Values ('2022-10-17 18:10:00',3,130,1)