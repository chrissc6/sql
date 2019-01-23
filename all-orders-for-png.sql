select * 
from Customers c
join Orders o
on o.customerid = c.id
where name = 'p&G'
