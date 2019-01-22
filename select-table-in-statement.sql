select * from Customers

--where Name = 'Kroger'
--	 or name = 'P&G'
--	 or Name = 'PNC Bank'
--	 or Name = 'Cintas'
--	 or Name = 'Spectrum'
-- where name in ('Kroger', 'P&G', 'PNC Bank', 'Cintas', 'Spectrum')'

where name in (
	select name from Customers where id in (5, 10, 15, 20, 25)
	)
order by sales desc;