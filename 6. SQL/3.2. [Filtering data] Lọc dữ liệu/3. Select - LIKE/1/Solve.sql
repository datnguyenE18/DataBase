SELECT id, NAME, surname
FROM suspect
WHERE
    surname LIKE 'Gre_n' AND(NAME LIKE 'B%' OR NAME LIKE 'b%') AND height <= 170
ORDER BY id ASC;