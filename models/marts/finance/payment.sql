SELECT
p.order_id,
customer_id,
SUM(amount_euro) as payment_amount_sum
from {{ref('stg_stripe_payment')}} p
inner join {{ref('stg_jaffle_shop__orders')}} o
on p.order_id = o.order_id
where o.status = 'completed'
group by p.order_id , customer_id

