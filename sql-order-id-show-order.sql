-- list lines for order.id = 24

select *
from orders o
join OrderLines ol
on ol.OrdersId = o.id
where o.id = 24