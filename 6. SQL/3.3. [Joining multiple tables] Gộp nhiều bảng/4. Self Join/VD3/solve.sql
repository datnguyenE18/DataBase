SELECT
    a10.country_code,
    a10.size AS size2010,
    a15.size AS size2015
FROM populations a10
INNER JOIN populations a15 
ON
    a10.country_code = a15.country_code 
    AND a10.year = 2010 
    AND a15.year = 2015
ORDER BY country_code;