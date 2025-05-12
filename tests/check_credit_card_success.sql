Select *
From dbt-tutorial.stripe.payment
Where paymentmethod = "credit_card"
AND
status != "success"