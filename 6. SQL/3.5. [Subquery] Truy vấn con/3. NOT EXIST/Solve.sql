SELECT department_name FROM departments dep
WHERE NOT EXISTS(
    SELECT 1
    FROM employees emp
    WHERE emp.department_id = dep.id
)
ORDER BY dep.id;