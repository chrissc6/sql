/*
select 'o''brian', 'abc', 123.45
select '2019-01-24 00:00:00.000'
select GETDATE()
*/


/*
insert into Customers 
(Name,City, State, Sales, Active)
values
('Chris Inc.', 'Mason', 'OH', 1000.99, 1);

select * from Customers

insert into Orders
(CustomerId, Date, Description)
values
(36, '2019-01-24', 'My first real order')

select * from Orders


insert into Orders
(CustomerId, Date, Description)
values
(36, GETDATE(), 'with a GETDATE()')

select * from Orders




insert into OrderLines
(OrdersId, Product, Quantity, Price)
values
(27, 'Rolls Royce', 10, 1000000)

select * from OrderLines

*/



/*



select * from OrderLines

insert into Customers
(Name, City, State, Sales, Active)
values
('Max Technical Training', 'Mason', 'OH', 100000, 1)

insert into Orders
(CustomerId, Date, Description)
values
(37, '2018-08-01', 'The first max order for widgets')

insert into OrderLines
(OrdersId, Product, Quantity, Price)
values
(29, 'Echo Dot', 1, 39.99)

insert into OrderLines
(OrdersId, Product, Quantity, Price)
values
(29, 'Echo', 1, 99.99)

*/
select* from OrderLines

