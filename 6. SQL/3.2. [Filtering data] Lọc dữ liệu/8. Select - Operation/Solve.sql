SELECT * FROM expressions
WHERE
    (operation = '+' AND c = a + b) 
    OR(operation = '*' AND c = a * b) 
    OR(operation = '-' AND c = a - b) 
    OR(operation = '/' AND c = a / b)
ORDER BY ID;