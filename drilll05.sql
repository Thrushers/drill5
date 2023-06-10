###punto 4.1

###parte 1

insert into customer(customer_id,store_id,first_name,last_name,email,address_id,activebool,create_date,last_update,active)
values (?,?,?,?,?,?,?,?,?,?)
 
update customer
set (customer_id,store_id,first_name,last_name,email,address_id,activebool,create_date,last_update,active)
where (condition)
 
delete from customer
where (condition)
 
###parte2

insert into staff(staff_id, first_name, last_name, addres_id, email, store_id, active, username, password, last_update, picture)
values (?,?,?,?,?,?,?,?,?,?,?)
 
update staff
set (staff_id, first_name, last_name, addres_id, email, store_id, active, username, password, last_update, picture)
where (condition)
 
delete from staff
where (condition)
 
###parte3

insert into actor(actor_id, first_name, last_name, last_update)
values (?,?,?,?)
 
update actor
set (actor_id, first_name, last_name, last_update)
where (condition)
 
delete from actor
where (condition)


###punto 4.2

select rental.rental_date , customer.first_name ,customer.last_name
from rental
left join customer on rental.customer_id = customer.customer_id
where extract(year from rental_date) = 2005
and extract(month from rental_date) = 7;

###punto 4.3

select date(payment_date) as payment_date2, sum(amount)
from payment
group by payment_date2 order by payment_date2 


###punto 4.4

select film. title, film.rental_rate 
from film
where release_year = 2006 and rental_rate > 4; 

###punto 5

select table_name,column_name,is_nullable,data_type
from information_schema.columns
where table_schema ='public'; 





