DROP TRIGGER IF EXISTS invalidCar;
CREATE TRIGGER invalidCar
BEFORE INSERT ON Car
FOR EACH ROW
When not exists ( SELECT driver_id from Driver WHERE driver_id = new.driver_id )
BEGIN 
SELECT RAISE(ABORT, " Invalid car ownwer");
END;
