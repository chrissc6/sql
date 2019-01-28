create procedure TopFiveCustomers
as
BEGIN
	SELECT Top 5 * from Customers
		order by sales desc;
END
go
exec TopFiveCustomers;
go