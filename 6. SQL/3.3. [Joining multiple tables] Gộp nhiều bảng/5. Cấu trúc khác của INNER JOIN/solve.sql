SELECT 
	CONCAT(s.first_name,' ', s.last_name) AS full_name,
	CONCAT(address.postal_code, ', ',address.address,', ', address.district,', ', city.city) AS address
FROM staff s
INNER JOIN address ON address.address_id = s.address_id
INNER JOIN city ON address.city_id = city.city_id
ORDER BY staff_id;