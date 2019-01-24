/*

select top 5 * 
from Customers

update Customers set
Sales = Sales * 1.1
where name = 'kroger'

*/
select * from Customers
where Sales = 50000

update Customers
set Sales = 50000
where name like '%c%g%'