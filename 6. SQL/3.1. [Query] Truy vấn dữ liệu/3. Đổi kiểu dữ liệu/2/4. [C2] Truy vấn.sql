SELECT
	CONCAT_WS(' ', first_name, last_name) AS full_name,
    CAST(birthdate as DATE) AS birthdate
FROM actor
ORDER BY birthdate DESC; /*ASC là sắp xếp tăng dần*/