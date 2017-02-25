-- For this challenge you need to create a simple GROUP BY statement, you want to group all the people by their age and count the people who have the same age.

-- people table schema

-- id
-- name
-- age
-- select table schema

-- age [group by]
-- people_count (people count)


Select  age, Count(*) as "people_count" from people group by age


select 'US' as location, u.id, u.name, u.price, u.card_name, u.card_number, u.transaction_date
from ussales u
where u.price > 50.00
union all
select 'EU' as location, e.id, e.name, e.price, e.card_name, e.card_number, e.transaction_date
from eusales e
where e.price > 50.00
