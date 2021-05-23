.mode	columns
.headers	on
.nullvalue	NULL

SELECT driver_id as id, name, email, license_plate
FROM Driver JOIN Car USING (driver_id)
WHERE is_electric = 1 
group by (driver_id);