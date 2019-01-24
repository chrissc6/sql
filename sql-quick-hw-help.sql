--sql-quick-hw-help

select *, Quantity*Price as 'total'
from OrderLines
where id = (select max(id) from OrderLines)

update OrderLines set Quantity = 10 where id = 86