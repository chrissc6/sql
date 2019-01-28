alter procedure InsertCustomer
	@Name nvarchar(30),
	@City nvarchar(30),
	@State nchar(2)
as
begin
	if @State not in ('OH', 'IN', 'KY')
		begin
			print 'State must be OH,IN,KY'
			return 1;
		end
	insert into Customers
		(Name,City,State,Sales)
	values
		(@Name,@City,@State,0)
	if @@ROWCOUNT != 1
		begin
			print 'insert failed'
			return 2
		end
	Print 'insert successful!'
end
go 
exec InsertCustomer 'ACME Mggjjkfg.2','Gary2','IN'
go