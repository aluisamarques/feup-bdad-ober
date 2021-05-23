.mode	columns
.headers	on
.nullvalue	NULL

SELECT  sum(service_id)
FROM ober_service JOIN location
WHERE strftime('%Y-%m-%d' , initial_time)='2020-04-04' and address like "%Braga%";
