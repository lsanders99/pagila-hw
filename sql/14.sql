/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT title
FROM film f
INNER JOIN film_category fg
ON f.film_id = fg.film_id
INNER JOIN category c
ON fg.category_id = c.category_id
WHERE c.name = 'Family';
