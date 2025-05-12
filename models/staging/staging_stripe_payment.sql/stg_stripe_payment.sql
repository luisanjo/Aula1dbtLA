SELECT
orderid as order_id,
amount/100 as amount_euro
From dbt-tutorial.stripe.payment