SELECT
    city,
    population
FROM countries
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;