select format(sum(sales), 'C') as "Total Sales", format(avg(sales), 'c') as "Average Sales",
format(min(sales), 'c') as "Min", format(max(sales), 'c') as "Max", count(*) as "Number of Customers" 
from Customers;