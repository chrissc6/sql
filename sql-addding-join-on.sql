--select * from Customers where id = 1;
--select * from orders where CustomerId = 4;

select o.date as 'order date', o.Description as 'description', C.name as 'customer name', ol. Product, ol.Description, ol.Price, ol.Quantity
-- making alias for tables called o and c
from orders o
join Customers c
on o.CustomerId = C.id
join OrderLines ol
on ol.OrdersId = o.Id
order by o.CustomerId
 --where orders.id = 1