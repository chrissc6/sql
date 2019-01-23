select Description, count(*) as 'units sold', sum(Quantity * Price) as 'total profit'
from OrderLines
group by Description
order by sum(Quantity * Price) desc