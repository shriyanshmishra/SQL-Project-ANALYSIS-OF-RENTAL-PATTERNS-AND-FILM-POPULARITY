-- Store Performance:

-- Identify which store generates the highest rental revenue.
select store.store_id, sum(amount) as rental_revenue 
from payment 
join rental
on payment.rental_id = rental.rental_id 
join inventory 
on rental.inventory_id = inventory.inventory_id
join store 
on inventory.store_id = store.store_id
group by store.store_id 
order by rental_revenue desc;


-- Determine the distribution of rentals by staff members to assess performance.

select concat(staff.first_name,' ',staff.last_name) Name,count(rental.rental_id) total_rental
from rental 
join staff 
on rental.staff_id = staff.staff_id
group by Name
order by total_rental desc