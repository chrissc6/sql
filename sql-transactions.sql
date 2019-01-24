--transcations
-- use rollback if fails, use commit if passes+

begin transaction 

update Customers set Sales = 100 where name like 'Chris%'

rollback
--commit

select * from Customers where name like 'chris%'