SELECT
    COALESCE(MIN(affected_customers), 0) AS min_affected_customers,
    COALESCE(MAX(affected_customers), 0) AS max_affected_customers,
    COALESCE(AVG(affected_customers), 3) AS avg_affected_customers
FROM grid;