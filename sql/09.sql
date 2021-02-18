/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, last_name, sum(amount)
FROM payment p
INNER JOIN staff s
ON s.staff_id = p.staff_id
WHERE p.payment_date::text LIKE '2020-01%'
GROUP BY s.first_name, s.last_name;
