-- For this challenge you need to create a simple GROUP BY statement, you want to group all the people by their age and count the people who have the same age.

-- people table schema

-- id
-- name
-- age
-- select table schema

-- age [group by]
-- people_count (people count)


Select  age, Count(*) as "people_count" from people group by age


-- For this challenge you need to create a UNION statement, there are two tables ussales and eusales the parent company tracks each sale at its respective location in each table, you must all filter the sale price so it only returns rows with a sale greater than 50.00. You have been tasked with combining that data for future analysis. Order by US then EU sales.


select 'US' as location, u.id, u.name, u.price, u.card_name, u.card_number, u.transaction_date
from ussales u
where u.price > 50.00
union all
select 'EU' as location, e.id, e.name, e.price, e.card_name, e.card_number, e.transaction_date
from eusales e
where e.price > 50.00

-- 

/*Select top 10 customers per amount spent*/

Select c.customer_id, c.email, 
count(p.payment_id) as "payments_count",
cast(sum(p.amount) as float) as "total_amount"
from customer c
join payment p on c.customer_id = p.customer_id
group by (c.customer_id)
order by sum(p.amount) desc
limit 10
