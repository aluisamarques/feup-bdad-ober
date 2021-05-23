DROP TRIGGER IF EXISTS driverUnavailable;
CREATE TRIGGER driverUnavailable
AFTER INSERT ON ober_service
FOR EACH ROW
When  exists ( SELECT driver_id, initial_time, final_time from ober_service
             WHERE driver_id = new.driver_id and 
            ((new.initial_time >= initial_time and new.inital_time<= final_time) or (new.final_time >= initial_time and new.final_time <= final_time)
            or (new.initial_time < inital_time and new.final_time > final_time)))
BEGIN 
SELECT RAISE(ABORT, " Driver unavailable ");
END;