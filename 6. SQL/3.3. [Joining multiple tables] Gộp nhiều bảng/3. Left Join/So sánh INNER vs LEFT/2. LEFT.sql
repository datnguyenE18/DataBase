SELECT
    users.id,
    cities.country
FROM users
LEFT JOIN cities ON users.city = cities.city
ORDER BY id;