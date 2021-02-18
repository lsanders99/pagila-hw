/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT title, a.film_id, count(actor_id) AS actor_count
FROM film_actor a
INNER JOIN film f
ON a.film_id = f.film_id
GROUP BY f.title, a.film_id
ORDER BY actor_count, title;
