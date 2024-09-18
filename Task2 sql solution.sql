-- Film Popularity:	
-- Identify the top 10 most rented films.

select film.title,count(rental.rental_id) as rental_count
from film 
join inventory
on film.film_id = inventory.film_id
join rental 
on inventory.inventory_id = rental.inventory_id	
group by title
order by rental_count desc
limit 10;

-- Determine which film categories have the highest number of rentals.

select category.name, count(rental.rental_id) as rental_count 
from film
join film_category
on film.film_id = film_category.film_id
join inventory 
on film.film_id = inventory.film_id
join rental
on inventory.inventory_id = rental.inventory_id
join category
on film_category.category_id = category.category_id
group by category.name
order by rental_count desc




