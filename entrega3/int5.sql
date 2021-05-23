.mode	columns
.headers	on
.nullvalue	NULL


SELECT method, sum(amount), count(*), avg(amount)
FROM (
    SELECT method , amount
    FROM Service_payment
)
GROUP BY method;