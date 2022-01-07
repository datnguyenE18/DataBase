SELECT
    users.id,
    cities.country
FROM users
INNER JOIN cities ON users.city = cities.city
ORDER BY id;