/*
homework
add new cus, new order, new ol
update cus sale with new total from ol total
*/

--new cus
insert into	Customers
(Name, City,State, Sales, Active)
values
('Computer Inc.', 'Cincinnati', 'OH', 0, 1)


select* from Customers
where id =38

--new order
insert into Orders
(CustomerId, Date, Description)
values
(38, '2019-01-24', '1st unit')


select * from Orders

--new ol
insert into OrderLines
(OrdersId, Product, Description, Quantity, Price)
values
(30, 'CPU', 'intel', 1, 500)

insert into OrderLines
(OrdersId, Product, Description, Quantity, Price)
values
(30, 'GPU', 'nvidia', 2, 300)


select * from OrderLines

--update cus sales
update Customers
set Sales = 
(select sum(Quantity*Price) 
from OrderLines
where OrdersId = 30)
where Id = 38