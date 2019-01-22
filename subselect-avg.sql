-- display individual customers with sales
-- greater than the average of all customer sales
--using subselect 

-- select avg(sales) from Customers;

select * from Customers
 where sales > (select avg(sales) from Customers)