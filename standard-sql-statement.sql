select Name, CONCAT(city, ', ', State) as 'City, State', Sales as 'Qtr Sale'
from Customers
where city = 'cincinnati' and Sales >= 30000
order by sales desc;