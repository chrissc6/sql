--Display all rows and columns from a table and sort by a column in that table

--select * from Customers
--order by Name


--Display all columns from a table but only those rows where a column contains either A or B or C

--select * from Customers
--where Name = 'kroger' or name = 'pnc bank' or Name = 'ford'


--A valid join of two tables

select * from Customers c
join Orders o
on c.id = o.CustomerId


/*
NULL - 
	data does not exist (no value)

Aggregate functions-
	min- returns the smallest value
	max- returns the largest value
	count- returns number of rows
	sum- returns the sum
	avg- returns the average value

group by and having clauses-
	group by- groups "aggregates" the data
	having- used instead of where to set condition

what columns from a table must be included in insert-
	no columns are needed unless they have "not null", but not null can have a default value 

effects of executing update or delete-
	-can effect entire table unless "where" clause is used
	-delete wont delete any rows that would violate "foregin key" or other constraints

function that takes two or more strings, and joins them together to make one string

*/
