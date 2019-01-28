--use create procedure instead of alter 1st run

alter procedure helloworld
as
BEGIN
print 'Hello, World! from the .Net Boot Camp SQL Server topic';
select 'This is from SELECT';

--declaring a variable, must delcare before using variable
declare @counter int;
set @counter =  88;
select @counter;
DECLARE @message nvarchar(80) = 'This is the message text';
PRINT @message;
END
--statement between begin and end make up the procedure
go
exec helloworld
go