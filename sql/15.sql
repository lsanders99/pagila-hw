/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT c.name, count(f.film_id) AS "sum"
FROM film f
INNER JOIN film_category fg
ON f.film_id = fg.film_id
INNER JOIN category c
ON fg.category_id = c.category_id
INNER JOIN language l
ON f.language_id = l.language_id
WHERE l.name = 'English'
GROUP BY c.name;
