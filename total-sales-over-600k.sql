select city, sum(sales), count(*)
from Customers
group by City
having sum(sales) > 600000;