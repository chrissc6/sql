alter procedure deletecustomer
	@id int
	--@id int = -1
as
begin
	/*
	if @id = -1
	begin
	print 'id is requried'
	return 1
	end
	*/
	if @id is null
		begin
		print 'id is required'
		return 1
		end
-- this checks for the existence of the row to be deleted 
	if not exists (select 1 from Customers where id = @id)
	begin
	print 'Id does not exist'
	return 2
	end
	delete Customers
	where Id = @id
	if @@ROWCOUNT != 1
		begin
			print 'update failed'
			return 3
		end
	print 'update successful'
	return 0
end
go
exec deletecustomer 41
go