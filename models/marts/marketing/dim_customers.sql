

select 
c.customer_id,
c.first_name,
c.last_name,
min(o.order_date) as first_order_date,
max(o.order_date) as most_recent_order_date,
count(o.order_id) as number_of_orders,
SUM(payment_amount_sum) as payment_amount_sum
from {{ref('stg_jaffle_shop__clientes')}} c
inner join {{ref('stg_jaffle_shop__orders')}} o
on c.customer_id = o.customer_id
inner join {{ref('payment')}} p
on c.customer_id = p.customer_id
group by 
c.customer_id,
c.first_name,
c.last_name