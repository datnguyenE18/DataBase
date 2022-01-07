SELECT * FROM earthquakes
WHERE country IN('Indonesia', 'Papua New Guinea')
ORDER BY
    depth ASC,
    id ASC
LIMIT 3;