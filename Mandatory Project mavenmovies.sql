USE MAVENMOVIES;
-- Mandatory Project questions answer
-- Question-1 Write a SQL query to count the number of characters except for the spaces for each actor.
-- Return the first 10 actors' name lengths along with their names.

SELECT
CONCAT(a.first_name, ' ', a.last_name) AS full_name,
LENGTH(CONCAT(a.first_name, a.last_name)) as lenght_count
FROM
actor a
LIMIT 10;

-- Question-2 List all Oscar awardees(Actors who received the Oscar award) with their full names and the length of their names.
SELECT
CONCAT(a.first_name, ' ', a.last_name) AS full_name,
LENGTH(CONCAT(a.first_name, a.last_name)) AS l
FROM
actor_award a
WHERE
awards = 'oscar';

-- Question-3 Find the actors who have acted in the film ‘Frost Head.’
SELECT
*
FROM
actor a
INNER JOIN
film_actor fa ON a.actor_id = fa.actor_id
INNER JOIN
film f ON fa.film_id = f.film_id
WHERE
title = 'Frost Head';

-- Question-4 Pull all the films acted by the actor ‘Will Wilson.’
SELECT
*
FROM
film f
INNER JOIN
film_actor fa ON f.film_id = fa.film_id
INNER JOIN
actor a ON fa.actor_id = a.actor_id
WHERE
CONCAT(first_name, ' ', last_name) = 'Will Wilson';

-- Question-5 Pull all the films which were rented and return them in the month of May.
SELECT
*
FROM
rental r
INNER JOIN
inventory i ON r.inventory_id = i.inventory_id
INNER JOIN
film f ON i.film_id = f.film_id
WHERE
return_date BETWEEN '2005-05-01' AND '2005-05-31';

-- Question-6 Pull all the films with ‘Comedy’ category.
SELECT
*
FROM
film f
INNER JOIN
film_category fc ON f.film_id = fc.film_id
INNER JOIN
category c ON fc.category_id = c.category_id
WHERE
c.name = 'comedy';