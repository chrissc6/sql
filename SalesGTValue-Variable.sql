-- changed create to alter
alter procedure CustomersWithSalesGTValue
	@MinSales decimal(9,2)
as
BEGIN
	SELECT * from Customers
		where sales > @MinSales
		order by sales desc;
END
go
exec CustomersWithSalesGTValue 60000;
go