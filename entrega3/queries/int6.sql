.mode	columns
.headers	on
.nullvalue	NULL

SELECT  initial_time as schedule, address
FROM ober_service JOIN location ON ober_service.initial_location_id = location.location_id
WHERE strftime('%Y-%m-%d' , initial_time)='2020-04-04'
UNION ALL
SELECT  final_time as schedule, address
FROM ober_service JOIN location ON ober_service.final_location_id = location.location_id
WHERE strftime('%Y-%m-%d' , final_time)='2020-04-04'