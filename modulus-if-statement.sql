--dont forget to change create to alter
alter procedure EvenlyDivisibleByThirteen
	@TheNumber int
as
if @TheNumber % 13 = 0
	begin
	print 'Yes even by 13'
	return 1;
	end
else
	begin
	print 'No not evenly by 13'
	end
go

exec EvenlyDivisibleByThirteen 13
go