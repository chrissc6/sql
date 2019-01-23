select * 
from Customers c
join Orders o
on o.CustomerId = c.Id
join OrderLines ol
on ol.OrdersId = o.id
where c.name = 'nationwide'