alter procedure UpdateCustomer
	@id int,
	@Name nvarchar(30),
	@City nvarchar(30),
	@State nchar(2)
as
begin
	if @id is null
		begin
		print 'id is required'
		return 1
		end
	if @State not in ('OH', 'IN', 'KY')
		begin
		print 'State must be OH,IN,KY'
		return 1;
		end
	update Customers set
		name = @name,
		city = @city,
		state = @State
		where Id = @id
	if @@ROWCOUNT != 1
		begin
			print 'update failed'
			return 2
		end
	print 'update successful'
	return 0
end
go
exec UpdateCustomer 38, 'Acme Mfg.', 'Barry2','IN'
go