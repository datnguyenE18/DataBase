SELECT
    a, /*In cột a*/
    b, /*In cột b*/
    a + b AS "+", /*In cột +, có các giá trị là kết quả của a + b*/
    a - b AS "-",
    a * b AS "*",
    ROUND(CAST(a AS DECIMAL) / b, 2) AS "/"
FROM
    math;