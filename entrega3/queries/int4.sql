.mode	columns
.headers	on
.nullvalue	NULL

SELECT driver.name, 
    CASE WHEN Car.capacity >= 4 THEN 'true' ELSE 'false' END AS oberx_mode,
    CASE WHEN Car.is_electric = 1 THEN 'true' ELSE 'false' END AS eletric_mode,
    CASE WHEN Car.is_premium = 1 THEN 'true' ELSE 'false' END AS premium_mode,
    CASE WHEN Car.is_reduced_mobility = 1 THEN 'true' ELSE 'false' END AS reduced_mobility_mode,
    CASE WHEN Car.capacity >= 6 THEN 'true' ELSE 'false' END AS oberxl_mode
FROM Driver JOIN Car ON Car.driver_id = Driver.driver_id
GROUP BY driver.name