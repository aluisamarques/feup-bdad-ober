--QUERY 1
/* SELECT name, email, client_id 
From Client 
WHERE client_id NOT in (
    SELECT client_id FROM ober_service)
GROUP BY name; */

--QUERY 2 
--SELECT name, max(sum_ratings) FROM Driver
 --não sei escrever a média

--QUERY 3
--SELECT name, driver_id 
--FROM Driver JOIN Car USING (driver_id)
--WHERE is_electric = 1;

--QUERY 4
--SELECT name, email FROM Client JOIN ober_service USING (client_id)
--WHERE strftime('%Y-%m-%d' , initial_time)='2020-04-04';

--QUERY 5
--SELECT name, method, amount
--FROM Client JOIN (ober_service JOIN service_payment USING (service_id)) USING (client_id)
--WHERE (amount>5);

--QUERY 6
--SELECT distinct name, email, initial_time,amount
--FROM Client JOIN (ober_service JOIN service_payment USING (service_id)) USING (client_id)


--QUERY 7
--SELECT *--count(*) 
--FROM ober_service JOIN location
--WHERE strftime('%Y-%m-%d' , initial_time)='2020-04-04' and address like "%Braga%";


--QUERY 8 MIGUEL Selecionar por método o valor total que já foi obtido, o número de pagamentos feitos através desse método e a média do valor gasto por serviço por método de pagamento 
--SELECT method, sum(amount), count(*), avg(amount)
--FROM (
--    SELECT method , amount
--    FROM Service_payment
--)
--GROUP BY method;

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
