/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT i.film_id, title, count(i.film_id)
FROM inventory i
INNER JOIN film f
ON i.film_id = f.film_id
WHERE title LIKE 'H%'
GROUP BY i.film_id, title
ORDER BY title DESC;
