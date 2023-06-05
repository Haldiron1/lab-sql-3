USE sakila;
-- How many distinct (different) actors' last names are there?
SELECT COUNT(DISTINCT last_name) AS 'Nomes Diferentes'
FROM actor;

-- In how many different languages where the films originally produced? (Use the column language_id from the film table)
SELECT COUNT(DISTINCT language_id) AS 'Linguas Diferentes'
FROM film;
SELECT language_id FROM film;

-- How many movies were released with "PG-13" rating?

SELECT COUNT(rating) as "Nºs de PG-13's" from film
WHERE rating = 'PG-13';

-- Get 10 the longest movies from 2006.
SELECT  title, release_year, length  FROM FILM
WHERE release_year= '2006'
ORDER BY length DESC
LIMIT 10;

-- How many days has been the company operating (check DATEDIFF() function)?
-- não percebi a pergunta

-- Show rental info with additional columns month and weekday. Get 20.
SELECT * FROM rental;
SELECT rental_id, rental_date,  MONTH(rental_date) AS 'Mês', DAYNAME(rental_date) AS 'Dia da Semana' FROM rental
limit 20;

-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
select * from rental;
SELECT rental_id, rental_date, MONTH(rental_date) AS 'Mês', DAYNAME(rental_date) AS 'Dia da Semana',
    CASE WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend' ELSE 'workday' END AS day_type -- 1= sabad0, 7 = Domingo 
FROM rental
LIMIT 20;

-- How many rentals were in the last month of activity?
select COUNT(*) AS 'Alugeres do ultimo mês' from rental
WHERE YEAR(rental_date) = 2005 AND MONTH(rental_date) = 5;




