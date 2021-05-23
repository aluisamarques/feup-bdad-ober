.mode	columns
.headers	on
.nullvalue	NULL


SELECT client.name, client.email, client.phone_num
FROM Client
INTERSECT
SELECT driver.name, driver.email, driver.phone_num
FROM Driver 