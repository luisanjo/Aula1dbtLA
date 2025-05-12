

Select 
c.FIRST_NAME as nome,
c.LAST_NAME as apelido,
min(o.order_date) as primeira_encomenda
From 
dbt-tutorial.jaffle_shop.customers c
inner join dbt-tutorial.jaffle_shop.orders o
on c.ID = o.USER_ID
Group by nome, apelido

