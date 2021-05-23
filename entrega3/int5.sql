.mode	columns
.headers	on
.nullvalue	NULL


SELECT method, sum(amount) as total_amount, count(*) as num_rides, avg(amount) as avg_cost
FROM (
    SELECT method , amount
    FROM Service_payment
)
GROUP BY method;