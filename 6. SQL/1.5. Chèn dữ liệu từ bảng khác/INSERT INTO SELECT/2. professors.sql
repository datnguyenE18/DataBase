CREATE TABLE professors(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    university_shortname VARCHAR(50)
); INSERT INTO professors
SELECT DISTINCT
    first_name,
    last_name,
    university_shortname
FROM
    university_professors;