SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS first_customer,
    CONCAT(b.first_name, ' ', b.last_name) AS second_customer,
    a.city,
    a.country
FROM customer a
INNER JOIN customer b 
	ON a.city = b.city AND a.country = b.country AND a.customer_id != b.customer_id
ORDER BY country, city, a.first_name, a.last_name;