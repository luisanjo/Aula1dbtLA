Select status, count(*) as contador
from dbt-tutorial.jaffle_shop.orders
group by status 