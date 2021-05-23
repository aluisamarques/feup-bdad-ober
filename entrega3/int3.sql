.mode	columns
.headers	on
.nullvalue	NULL

SELECT license_plate, name, email
FROM Driver JOIN Car USING (driver_id)
WHERE is_electric = 1 
group by (license_plate);