select * from film;
use film;

#1.Display all film records
select * from film;

#2.Display only the title and release_year of all films
select title, release_year from film;

#3.Find the total number of films
select count(*) from film;

#4.Display all unique ratings
select distinct rating from film;

#5.Find films released in the year 2006
select * from film where release_year =2006;

#6.Find films with a rental rate greater than 3
select * from film where rental_rate>3;

#7.Find films with a rental duration of more than 5 days
select * from film where  rental_duration>5;

#8.Find films whose length is greater than 120 minutes
select * from film where length >120;

#9.Find films with a replacement cost greater than 20
select * from film where replacement_cost >20;

#10.Display films having a rating of 'PG'
select * from film where rating='pg';

#11.Find films with rental rates between 2 and 4
select * from  film  where rental_rate between 2 and 4;

#12.Find films whose length is between 90 and 120 minutes
select * from film where length between 90 and 120;

#13.Find films with replacement costs between 15 and 25
select * from film where replacement_cost between  15 and 25;

#14.Find films whose title starts with 'A'
select * from film where title like 'a%';

#15.Find films whose title ends with 'N'
select * from film where title like 'n%';

#16.Find films whose title contains the word 'LOVE'
select * from film where title like 'love';

#17.Find films having a rating of 'PG' or …
select * from film where rating in ('pg','g');

 #18.Find films released between 2005 and 2006
 select * from film where release_year between 2005 and 2006;
 
#19.Find films where rental duration is 3, 5, or 7 days
select * from film where rental_duration in (3,5,7);

#20.Find films whose rental rate is not equal to 2.99
select * from film where rental_rate <> 2.99;

#21.Display films from lowest to highest rental rate
select * from film order by  rental_rate asc;

#22.Display films from highest to lowest rental rate
select * from film order by rental_rate desc;

#23.Display films according to their length from longest to shortest
select * from film order by length desc;

#24.Display films according to replacement cost from highest to lowestm 
select * from film order by replacement_cost desc;

#25.Display films alphabetically by title
select * from film order by title asc;

#26.Display the 10 most expensive films based on replacement cost
select * from film order by replacement_cost desc limit 10;

#27.Display the 5 longest films
select * from film order by length desc limit 5;

#28.Find the average rental rate
select avg(rental_rate)average_rental_rate from film;

#29.Find the maximum rental rate
select max(rental_rate)miximum_rentel_rate from film;

#30.Find the minimum rental rate
select min(rental_rate)minimum_rental_rate from film;

#31.Find the average film length
select avg(length) average_length from film;

#32.Find the longest film
select max(length) average_length from film;

#33.Find the shortest film.
select min(length) shortest_film from film;

#34.Find the total replacement cost of all films
select sum(replacement_cost)total_replacement_cost from film;

#35.Find the average replacement cost
select avg(replacement_cost)total_replacement_cost from film;

#36.Find the total number of films for each rating
select count(*) total_film from film group by rating;

#37Find the number of films for each rating
select count(*) film_count from film  group by rating;

#38Find the average rental rate for each rating
select avg(rental_rate) average_rental_rate from film group by rating;

#39.Find the average film length for each rating
select avg(length) average_length from film group by rating;

#40.Find the maximum replacement cost for each rating
select max(replacement_cost) max_replacement_cost from film group by rating;

#41.Find the minimum rental rate for each rating
select min(rental_rate) min_rental_rate from film group by rating;

#42.Find ratings having more than 10 films
select count(*)film_count from film group by rating having count(*)>10;

#43.Find ratings where the average rental rate is greater than 2.50
select avg(rental_rate)avg_rental_rate from film group by rating having avg(rental_rate)>2.50;

#44.Find ratings where the average film length is greater than 100 minutes
select avg(length)avg_length from film group by rating having avg(length)>100;

#45.Categorize films based on length as Short, Medium, or Long using CASE
select title, length,
case
when length < 90 then 'short'					
when length between 90 and 120 then 'medium'
else 'log'
end as length_category
from film;

#46.Categorize films based on rental rate as Cheap, Moderate, or Expensive using CASE
select title,rental_rate,
case
when rental_rate <2 then 'cheap'
when rental_rate between 2 and 3
then 'moderate'
else 'expensive'
end as rental_category
from film;

#47.Display title, length, and film_category using CASE
select title,length,
case
when length <90 then 'short'
when length between 90 and 120 then 'medium'
else 'log'
end as film_category
from film;

#48.Find the second-highest rental rate
select max(rental_rate) as second_highest_rental_rate
from film where rental_rate < (select max(rental_rate)
from film);

#49.Find the third-highest replacement cost
select distinct replacement_cost from film 
order by replacement_cost desc
limit 1 offset 2;

#50.Find the film(s) having the maximum length
select * from film where length = (select max(length) from film);

#51.Find films whose rental rate is higher than the average rental rate
select * from film  where rental_rate >(select avg(rental_rate)from film);

#52.Find films whose replacement cost is higher than the average replacement cost
select * from film where replacement_cost >(select avg(replacement_cost) from film);

#53.Find the rating with the highest average rental rate
select rating,avg(rental_rate) as avg_rental_rate from film group by rating order by avg_rental_rate desc limit 1;

#54.Find the rating with the longest average film length
select rating,avg(length) as length from film group by rating order by length desc limit 1;

#55.Display the top 5 films based on replacement cost
select * from film order by replacement_cost desc limit 5;

#56.Find the number of films for each release year
select release_year, count(*) as film_count from film group by release_year;

#57.Find the average rental rate for each release year
select release_year,avg(rental_rate)as average_rental_rate from film group by release_year;

#58.Find the year having the highest number of films
select release_year,count(*) as film_count from film group by release_year order by film_count desc limit 1;

#59.Find films where rental_rate is greater than replacement_cost / 10
select * from film where rental_rate>replacement_cost /10;

#60.Display each film's title, rental rate, replacement cost, and the difference between replacement cost and rental rate
select title,rental_rate,replacement_cost,replacement_cost -rental_rate as difference from film;

#61.Find the film with the highest rental_rate
select * from film where rental_rate=(select max(rental_rate) from film);

#62.Find the film with the lowest rental_rate
select * from film where rental_rate=(select min(rental_rate) from film);

#63.Find the film with the highest replacement_cost
select * from film where replacement_cost=(select max(replacement_cost) from film);

#64.Find the film with the lowest replacement_cost
select *from film where replacement_cost=(select min(replacement_cost) from film);

#65.Find the longest film for each rating
select rating,max(length) as longest_film from film group by rating;

#66.Find the shortest film for each rating
select rating,min(length) as shortest_film from   film group by rating;

#67.Find the average film length for each rating
select rating,round(avg(length),2) as averege_length from film group by rating;

#68.Find the average replacement_cost for each rating
select rating,round(avg(replacement_cost),2) as replacement_cost from film group by rating;

#69.Find the average rental_duration for each rating
select rating,round(avg(rental_duration),2) as rental_duration from film group by rating;

#70.Find the total rental_rate for all films
select sum(rental_rate) as total_rentel_ratee from film;

#71.Find the total replacement_cost of all films
select sum(replacement_cost) as total_replacement_cost from film;

#72.Find the total length of all films
select sum(length) as total_length from film;

#73.Find the number of films for each rental_duration
select rental_duration,count(*)as film_count from film group by rental_duration;

#74.Find rental_durations having more than 10 films
select rental_duration,count(*)as film_count from film group by rental_duration having count(*) >22;

#75.Find films having both rental_rate greater than 3 and replacement_cost greater than 20
select * from film where rental_rate >3 and replacement_cost >20;

#76.Find films having rental_duration between 4 and 6
select * from film where rental_duration between 4 and 6;

#77.Find films whose length is between 90 and 120
select * from film where length between 90 and 120;

#78.Find films whose replacement_cost is between 15 and 25
select * from film where replacement_cost between 15 and 25;

#79.Display the top 5 films with the highest replacement_cost
select * from film order by replacement_cost desc limit 5;

#80.Display the top 10 films with the lowest rental_rate
select * from film order by rental_rate asc limit 10;