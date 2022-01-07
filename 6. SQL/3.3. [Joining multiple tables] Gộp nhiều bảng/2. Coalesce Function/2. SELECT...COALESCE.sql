SELECT
    rank,
    title,
    name,
    COALESCE(sector, 'Unknown') AS sector,
    COALESCE(industry, sector, 'Unknown') AS industry,
    employees
FROM fortune;