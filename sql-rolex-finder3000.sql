select c.Name as 'Customer', count(*) as 'Rolex watches ordered'
from OrderLines ol
join Orders o
on o.id = ol.OrdersId
join Customers c
on c.id = o.CustomerId
where ol.Description = 'rolex'
group by c.Name
order by c.Name