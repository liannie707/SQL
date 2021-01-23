-- Join the film to the film_actor table.
SELECT * FROM film_actor
INNER JOIN film
ON film_actor.film_id = film.film_id

-- Join the actor table to the film_actor table. 
SELECT * FROM film_actor
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id

-- Try to join the actor, film_actor, and film table together (3 joins!)
SELECT film_actor.actor_id, film_actor.film_id,
	actor.first_name, actor.last_name, 
	film.title, film.rating
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id 
INNER JOIN film
ON film.film_id = film_actor.film_id
WHERE film.rating = 'PG'