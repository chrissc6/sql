select c.name 
from Orders o
join Customers c 
on c.id = o.customerid
where o.Id = 21