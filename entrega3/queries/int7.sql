.mode	columns
.headers	on
.nullvalue	NULL

SELECT driver.name as Driver, client.name as Client, rating
FROM Driver JOIN Service_feedback ON Service_feedback.driver_id = Driver.driver_id
JOIN ober_service ON Service_feedback.service_id = ober_service.service_id
JOIN Client ON Client.client_id = ober_service.client_id
GROUP BY driver.name
HAVING rating < 3