select * 
from Customers c
join Orders o
on o.CustomerId = c.Id
order by name 