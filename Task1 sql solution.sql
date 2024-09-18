-- Rental Trends:
-- Analyze the monthly rental trends over the available data period.

select monthname(rental_date) as Rental_month,count(*) as Rental_count
from rental 
group by rental_month
order by rental_month desc;

-- Determine the peak rental hours in a day based on rental transactions.

select hour(rental_date) as Rental_hour,count(*) as Rental_count
from rental
group by rental_hour
order by rental_count desc;





