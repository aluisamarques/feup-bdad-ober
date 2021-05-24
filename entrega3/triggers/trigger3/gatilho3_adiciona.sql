DROP TRIGGER IF EXISTS invalidService;
CREATE TRIGGER invalidService
BEFORE INSERT ON ober_service 
FOR EACH ROW
WHEN ( (select email from Client  where new.client_id = client_id) = 
(select email from Driver  where new.driver_id = driver_id))
BEGIN 
    SELECT RAISE (ABORT, 'Same user can not be both the driver and the client');
END;
