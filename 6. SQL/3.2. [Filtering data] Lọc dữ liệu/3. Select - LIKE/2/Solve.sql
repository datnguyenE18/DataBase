SELECT id, NAME, surname
FROM suspect
WHERE
    height <= 170 
    OR( NAME NOT LIKE 'B%' AND NAME NOT LIKE 'b%') 
    OR surname NOT LIKE 'Gre_n'
ORDER BY id ASC;