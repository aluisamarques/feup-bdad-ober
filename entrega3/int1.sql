.mode	columns
.headers	on
.nullvalue	NULL

SELECT client_id as id, name, email
FROM Client 
WHERE client_id NOT in (
    SELECT client_id FROM ober_service)
GROUP BY name
UNION ALL 
SELECT driver_id as id, name, email
From Driver  
WHERE driver_id NOT in (
    SELECT driver_id FROM ober_service)
GROUP BY name