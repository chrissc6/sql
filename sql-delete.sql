--select * from Customers

delete from Orders where id in (
select o.id 
from Orders o
join Customers c
on c.Id = o.CustomerId
where name like '%bank%')