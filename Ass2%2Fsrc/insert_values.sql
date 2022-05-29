---- clean-up for create new tables
DROP TABLE customer;
DROP TABLE city;
DROP TABLE insurance_company;
DROP TABLE owned_cars;
DROP TABLE car_index;
DROP TABLE car_colour;
DROP TABLE insurance_package;

---- Fill table customer
INSERT INTO customer VALUES
(1,'Michael', 'Knight', 4000)
INSERT INTO customer VALUES
(2,'The', 'Batman', 4000)
INSERT INTO customer VALUES
(3,'Till', 'Schweiger', 1000)
INSERT INTO customer VALUES
(4,'Stephan', 'King', 401)
INSERT INTO customer VALUES
(5,'Queen', 'Elisabeth', 5000)
INSERT INTO customer VALUES
(6,'Ashanti', 'Ashley', 7000)
INSERT INTO customer VALUES
(7,'Shelton', 'Hubert', 6000)
INSERT INTO customer VALUES
(8,'Tom', 'Piper', 8000)
INSERT INTO customer VALUES
(9,'Jill', 'Morission', 5000)
INSERT INTO customer VALUES
(10,'Michael', 'Ford', 2000)

---- Fill table city
INSERT INTO city VALUES
(4000,'Basel')
INSERT INTO city VALUES
(1000,'Brussel')
INSERT INTO city VALUES
(2000,'Nevada')
INSERT INTO city VALUES
(3000,'Gotham City')
INSERT INTO city VALUES
(5000,'Dooville')
INSERT INTO city VALUES
(6000,'New Town')
INSERT INTO city VALUES
(7000,'Qoqassic World')
INSERT INTO city VALUES
(8000,'Bern')
INSERT INTO city VALUES
(9000,'Zurich')
INSERT INTO city VALUES
(401,'HTTP')

---- Fill table insurance_company
INSERT INTO insurance_company VALUES
(1,'How Bizarre Versicherungen','Smallland 34',4000)
INSERT INTO insurance_company VALUES
(2,'Ooops Insurance','Next Corner Left 46',4000)
INSERT INTO insurance_company VALUES
(3,'I did it again Insurance Inc.','Wordstreet 11',2000)
INSERT INTO insurance_company VALUES
(4,'Crash test dummies Inc.','Death Star 1',3000)
INSERT INTO insurance_company VALUES
(5,'Dont look back in Anger','Hotel California Drive 1',401)


---- Fill table owned_cars
INSERT INTO owned_cars VALUES
(0,1,0,1,1,1)

---- Fill table car_index
INSERT INTO car_index VALUES
(1000;'Tesla', 'Model Y')
INSERT INTO car_index VALUES
(2000;'Ford', 'Focus')
INSERT INTO car_index VALUES
(4000;'DeLorean', 'DMC-12')
INSERT INTO car_index VALUES
(5000;'Batmobile', 'Tumbler')
INSERT INTO car_index VALUES
(6000;'Opel', 'Manta')
INSERT INTO car_index VALUES
(7000;'GMC', 'Vandura')
INSERT INTO car_index VALUES
(8000;'BMW', 'i3')
INSERT INTO car_index VALUES
(1001;'Tesla', 'Model 3')
INSERT INTO car_index VALUES
(9000;'Cadilac', 'ETCO-1')
INSERT INTO car_index VALUES
(0000;'Unknown', 'Unknown')

---- Fill table car_colour
INSERT INTO car_colour VALUES
(0,'Unknown')
INSERT INTO car_colour VALUES
(1,'Black')
INSERT INTO car_colour VALUES
(2,'Blue')
INSERT INTO car_colour VALUES
(3,'Red')
INSERT INTO car_colour VALUES
(4,'Green')

---- Fill table insurance_package
INSERT INTO insurance_package VALUES
(20,'Ooops- Nothing Included', 100, 2)
INSERT INTO insurance_package VALUES
(21,'Ooops- only wheels Included', 200, 2)
INSERT INTO insurance_package VALUES
(22,'Ooops- we will pay all', 300, 2)
INSERT INTO insurance_package VALUES
(23,'Ooops- we will pay all and more', 1000, 2)
INSERT INTO insurance_package VALUES
(31,'Basic', 99 3)
INSERT INTO insurance_package VALUES
(32,'Medium', 199, 3)
INSERT INTO insurance_package VALUES
(34,'Medium Rare', 299, 3)
INSERT INTO insurance_package VALUES
(41,'one', 101, 4)
INSERT INTO insurance_package VALUES
(43,'two', 202, 4)
INSERT INTO insurance_package VALUES
(42,'three', 202, 4)
INSERT INTO insurance_package VALUES
(666,'you get nothing', 0, 1)
