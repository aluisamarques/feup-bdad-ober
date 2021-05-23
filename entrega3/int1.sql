.mode	columns
.headers	on
.nullvalue	NULL

SELECT client_id as id, name, email
From Client 
WHERE client_id NOT in (
    SELECT client_id FROM ober_service)
GROUP BY name;