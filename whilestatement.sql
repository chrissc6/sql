declare @cnt int = 0
while @cnt < 10
	begin
		print concat('This line is printed ', @cnt + 1, ' times')
		set @cnt = @cnt + 1
		end