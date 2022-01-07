SELECT 
st.store_id AS store_id, SUM(p.amount) AS sum
FROM payment p
--Join with rental table to get data from rental table
INNER JOIN rental r ON r.rental_id = p.rental_id
--Join with staff table to get data from staff table
INNER JOIN staff s ON s.staff_id = r.staff_id
--Join with store table to get data from store table
INNER JOIN store st ON st.store_id = s.store_id
GROUP BY
st.store_id
ORDER BY SUM(p.amount) DESC;