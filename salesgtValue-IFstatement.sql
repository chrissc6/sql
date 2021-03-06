USE [SalesDb]
GO
/****** Object:  StoredProcedure [dbo].[CustomersWithSalesGTValue]    Script Date: 1/28/2019 11:19:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- changed create to alter
ALTER procedure [dbo].[CustomersWithSalesGTValue]
	@MinSales decimal(9,2)
as
BEGIN
	IF @MinSales < 0
	begin
		print 'Sales must be greater than zero'
		return 1;
	end
	SELECT * from Customers
		where sales > @MinSales
		order by sales desc;
END
go
--declare @rc int
--set @rc =
exec [CustomersWithSalesGTValue] -60000