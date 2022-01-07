SELECT 
	CONCAT(first_name,' ',last_name) as full_name, 
	cast(birthdate as date) 
from actor
order by birthdate desc;