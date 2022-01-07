SELECT first_name, last_name
FROM actor
WHERE actor_id IN (
    SELECT film_actor.actor_id
    FROM film_actor 
    JOIN film ON film_actor.film_id = film.film_id
    WHERE film.title = 'ACADEMY DINOSAUR')
ORDER BY first_name, last_name;