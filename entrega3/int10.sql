.mode	columns
.headers	on
.nullvalue	NULL


SELECT max(amount)
FROM(
    SELECT amount
    FROM Driver JOIN ober_service ON ober_service.driver_id = driver.driver_id
    JOIN service_payment ON ober_service.service_id = service_payment.service_id
)