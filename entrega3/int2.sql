.mode	columns
.headers	on
.nullvalue	NULL

SELECT service_id,client.name as client, driver.name as driver, final_time - initial_time as total_time
FROM CLIENT , Driver JOIN ober_service ON ober_service.client_id = Client.client_id AND ober_service.driver_id=Driver.driver_id
group by service_id;