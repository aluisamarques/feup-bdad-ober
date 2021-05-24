DROP TRIGGER IF EXISTS getRating;
CREATE TRIGGER getRating
AFTER INSERT ON service_feedback
FOR EACH ROW
BEGIN
UPDATE Driver SET sum_ratings = sum_ratings + NEW.rating 
WHERE (NEW.driver_id = Driver.driver_id);
UPDATE Driver SET num_ratings = num_ratings + 1
WHERE (NEW.driver_id = Driver.driver_id);
END;
