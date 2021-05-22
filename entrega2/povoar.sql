PRAGMA foreign_keys = on;


--location
INSERT INTO location(location_id, latitude, longitude, address) VALUES (1, 0.1, 0.2, 'Rua da Quinta do Monte');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (2, 2.3, 4.9, 'Rua Unidade Vimaranense');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (3, 4.5, 20.3, 'R do Sport Clube Beira-Mar');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (4, 5.4, 3.20, 'R. das Pombas, 3810-150 Aveiro');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (5, 2.33, 4.88, 'R. Alfredo Allen');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (6, 2.3, 4.9, ' 125 R. Dr. Manuel Pereira da Silva');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (7, 2.33, 4.88, 'R. da Saudade, 4805-134 Braga');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (8, 2.3, 4.9, 'R. da Morte 4762-123 Braga');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (9, 2.4, 4.7, 'R. da Vida 4762-321 Braga');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (10, 2.4, 2.5, 'R. Cristóvão Pinho Queimado');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (11, 2.4, 2.9, 'R. Francisco Ferreira Neves');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (12, 2.5, 2.9, 'R. da FEUP');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (13, 2.5, 3.1, 'R. Costa Cabral');
INSERT INTO location(location_id, latitude, longitude, address) VALUES (14, 2.7, 3.1, 'R. Miradouro');

--client
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (1,'aluisamarques21@gmail.com','Luisa Marques', 125676782, 918982527, 5555556666677777);
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (2,'margagorda@gmail.com','Margarida Rocha', NULL, 222355678, 334455667788);
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (3,'anaraquelpatricio@gmail.com','Raquel Patricio', 213897678, 916278938, 922839304832);
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (4,'brunolimalimao@gmail.com','Bruno Lima', 482918171, 910183982,887778765468);
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (5,'joseduardomota@gmail.com','Eduardo Oliveira', 872093175, 982710247,862917694692);
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (6,'joa.sims@gmail.com','Joana Simões', 872047482, 982718747,132916894692);
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (7,'ananas@gmail.com','Ana Nazaré', 372046482, 983418747,132916344692);
INSERT INTO client(client_id, email, name,  nif, phone_num, credit_card_num) VALUES (8,'johnny@gmail.com','João Inglês', 372123482, 981234747,112316344692);

--driver
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (1,'sougandacamelo@gmail.com','Rafael Camelo', 234432234, 919991999, 5538070596209593, 0, 0);
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (2,'boboconstrutor@gmail.com','Pedro Pinheiro', 281819264 , 917772930, 553392615374, 0, 0);
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (3,'donajoaquina@gmail.com','Ana Joaquina', 292849484 , 916388750, 667776545, 0, 0);
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (4,'juliasenhora@hotmail.com','Júlia Matos', 253320741 , 916388751, 838383827158, 0, 0);
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (5,'profuno_gomas@live.com.pt','Profuno Gomas', 253320742 , 916388752, 838383827159, 0, 0);
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (6,'professora_ada@fcna.up.pt','Professora Ada', 253320753 , 916318752, 838383327159, 0, 0);
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (7,'chico.a.brincar@fc.up.pt','Francisco Rocha', 253420753 , 916314752, 838383321159, 0, 0);
INSERT INTO driver(driver_id, email, name, nif, phone_num, credit_card_num, num_ratings, sum_ratings) VALUES (8,'eunice@fe.up.pt','Eunice Amora', 253123753 , 912344752, 838381234159, 0, 0);

--car
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('50-UM-CA', 'Volvo', 4, 0, 0, 0, 1);
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('CA-RA-10', 'Renault', 7, 0, 0, 0, 2);
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('39-UT-04', 'Audi', 4, 1, 0, 0, 3);
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('AA-00-AA', 'Jaguar', 4, 0, 0, 1, 4);
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('AU-08-UA', 'Honda', 4, 0, 1, 0, 5);
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('56-08-SL', 'Mazda', 3, 1, 0, 0, 6);
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('AV-23-OI', 'Renault', 4, 0, 0, 0, 7);
INSERT INTO car(license_plate, model, capacity, is_reduced_mobility, is_electric, is_premium, driver_id) VALUES ('AV-32-OL', 'BMW', 7, 0, 0, 0, 7);

--ober_service
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (1, '2001-01-01 01:01:01', '2001-01-01 01:13:01',1,2,1,1);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (2, '2020-03-26 13:30:20', '2020-03-26 03:31:28',3,4,2,2);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (3, '2020-04-20 16:20:13', '2020-04-20 16:41:21',5,6,1,3);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (4, '2020-04-21 23:20:14', '2020-04-22 23:21:56',7,8,3,4);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (5, '2020-06-30 23:10:11', '2020-04-22 00:40:17',1,4,4,5);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (6, '2020-07-01 10:00:01', '2020-07-01 10:10:17',1,2,1,1);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (7, '2020-04-04 19:32:01', '2020-04-04 19:42:42',8,9,5,6);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (8, '2020-04-04 00:32:56', '2012-04-06 00:37:00',10,11,6,2);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (9, '2020-07-03 06:06:56', '2012-07-03 06:40:00',12,13,7,7);
INSERT INTO ober_service(service_id, initial_time, final_time, initial_location_id, final_location_id, driver_id, client_id) VALUES (10, '2020-07-04 01:06:56', '2012-07-04 01:40:00',13,14,8,8);

--ober_ride
INSERT INTO ober_ride(ober_ride_id, service_id, license_plate, chosen_ride_type) VALUES (1, 1, '50-UM-CA', 'oberx');
INSERT INTO ober_ride(ober_ride_id, service_id, license_plate, chosen_ride_type) VALUES (2, 3, '50-UM-CA', 'oberx');
INSERT INTO ober_ride(ober_ride_id, service_id, license_plate, chosen_ride_type) VALUES (3, 4, '39-UT-04', 'assist');
INSERT INTO ober_ride(ober_ride_id, service_id, license_plate, chosen_ride_type) VALUES (4, 5, 'AA-00-AA', 'oberx');
INSERT INTO ober_ride(ober_ride_id, service_id, license_plate, chosen_ride_type) VALUES (5, 7, 'AU-08-UA', 'green');
INSERT INTO ober_ride(ober_ride_id, service_id, license_plate, chosen_ride_type) VALUES (6, 9, 'AV-23-OI', 'oberx');
INSERT INTO ober_ride(ober_ride_id, service_id, license_plate, chosen_ride_type) VALUES (7, 10,'AV-32-OL', 'oberxl');

--ober_package
INSERT INTO ober_package(ober_package_id, third_party_phone_num, service_id) VALUES (1, 918982527, 2);
INSERT INTO ober_package(ober_package_id, third_party_phone_num, service_id) VALUES (2, 913519821, 6);
INSERT INTO ober_package(ober_package_id, third_party_phone_num, service_id) VALUES (3, 913559822, 8);

--package
INSERT INTO package(package_id, pack_value, weight, ober_package_id) VALUES (1, 13, 10, 1);
INSERT INTO package(package_id, pack_value, weight, ober_package_id) VALUES (2, 100, 13, 2);
INSERT INTO package(package_id, pack_value, weight, ober_package_id) VALUES (3, 50, 1, 3);

--service_feedback
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (1, 'Não gosto de ir a Guimarães nem dos motoristas de lá.', 1, 1);
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (4, 'Gostei muito do serviço.', 2, 2);
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (3, NULL, 2, 3);
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (5, 'A júlia é mt simpática e o champanhe estava ótimo!', 4, 5);
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (4, 'Foi bom viver sem fazer mal ao ambiente', 5, 7);
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (5, 'Rápido e eficiente', 6, 8);
INSERT INTO service_feedback(rating, comment, driver_id, service_id) VALUES (1, 'Conduziu demasiado rápido, senti-me insegura', 8, 10);


--service_payment
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('mastercard', 2.3, 1, 1);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('visa', 5.2, 2, 2);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('visa', 10.7, 3, 3);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('american_express', 1, 4, 4);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('american_express', 1000.23, 5, 5);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('mastercard', 14, 6, 1);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('mastercard', 3, 7, 6);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('visa', 0.65, 8, 2);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('visa', 20, 9, 7);
INSERT INTO service_payment(method, amount, service_id, client_id) VALUES('mastercard', 2, 10, 8);