/*
 * Use a JOIN to determine how profitable each country is,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT co.country, sum(p.amount) AS profit
FROM payment p
INNER JOIN rental r
ON p.rental_id = r.rental_id
INNER JOIN customer cu
ON r.customer_id = cu.customer_id
INNER JOIN address a
ON cu.address_id = a.address_id
INNER JOIN city ci
ON a.city_id = ci.city_id
INNER JOIN country co
ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY co.country;

