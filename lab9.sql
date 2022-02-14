use sakila;
#Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE sakila.rentals_may AS 
    (SELECT 
            *
        FROM
            sakila.rental
        WHERE
            DATE_FORMAT(rental_date, '%m') = 5);

#Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

insert into rentals_may(SELECT 
            *
        FROM
            sakila.rental
        WHERE
            DATE_FORMAT(rental_date, '%m') = 5);


#Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE sakila.rentals_june AS 
    (SELECT 

            *
        FROM
            sakila.rental
        WHERE
            DATE_FORMAT(rental_date, '%m') = 6);

#Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
insert into rentals_june(SELECT 
            *
        FROM
            sakila.rental
        WHERE
            DATE_FORMAT(rental_date, '%m') = 6);

#Check the number of rentals for each customer for May.
select customer_id, count(rental_id) as films_rented
from rental 
where DATE_FORMAT(rental_date, '%m') = 5
group by customer_id
order by films_rented desc;

#Check the number of rentals for each customer for June.
select customer_id, count(rental_id) as films_rented
from rental 
where DATE_FORMAT(rental_date, '%m') = 6
group by customer_id
order by films_rented desc;
 
 #Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:
 
#select * from rentals_may limit 10;
#select * from sakila.rental where (date_format(rental_date,"%m")= 5);