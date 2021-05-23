PRAGMA foreign_keys = on;
.mode	columns
.headers	on
.nullvalue	NULL


SELECT name, sum_ratings, num_ratings, sum_ratings/num_ratings FROM Driver WHERE driver_id = 1;
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (14, '2001-01-02 01:01:01', '2001-01-02 01:13:01',1,2,1,1);
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (7, 'Foi fixe :)', 1, 14);
SELECT name, sum_ratings, num_ratings, sum_ratings/num_ratings FROM Driver WHERE driver_id = 1;
