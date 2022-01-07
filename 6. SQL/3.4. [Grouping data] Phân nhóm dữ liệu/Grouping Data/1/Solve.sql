SELECT
actor.first_name, actor.last_name, count(*) AS films
FROM
actor
JOIN
Film_Actor ON actor.actor_id = Film_Actor.actor_id
GROUP BY
actor.first_name, actor.last_name
ORDER BY
films DESC, first_name, last_name
LIMIT 1;