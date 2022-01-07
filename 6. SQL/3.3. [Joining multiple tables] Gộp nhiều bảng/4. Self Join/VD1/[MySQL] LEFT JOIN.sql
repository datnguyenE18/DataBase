SELECT
    CONCAT(e.first_name, ' ', e.last_name) AS employee,
    CONCAT(m.first_name, ' ', m.last_name) AS manager
FROM staffs e
INNER JOIN staffs m ON m.staff_id = e.manager_id
ORDER BY manager;