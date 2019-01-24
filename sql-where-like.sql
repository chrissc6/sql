--using like in the where clause
-- _ underscore matches excatly 1 character
-- % percent sign matches any number of characters even zero
-- any other character must match exactly



-- -finding ank
--select *
--from Customers 
--where name like '%_ank%'
--order by name


-- -find g in pos 5
--select * 
--from Customers
--where name like '____g%'


/*
select *
from Customers
where name like '%c%f%'
*/


select * 
from Customers
where name like ''