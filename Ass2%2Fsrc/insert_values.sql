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
(1,'The', 'Batman', 4000)
INSERT INTO customer VALUES
(1,'Till', 'Schweiger', 1000)
INSERT INTO customer VALUES
(1,'Stephan', 'King', 401)
INSERT INTO customer VALUES
(1,'Queen', 'Elisabeth', 5000)
INSERT INTO customer VALUES
(1,'Ashanti', 'Ashley', 7000)
INSERT INTO customer VALUES
(1,'Shelton', 'Hubert', 6000)
INSERT INTO customer VALUES
(1,'Tom', 'Piper', 8000)
INSERT INTO customer VALUES
(1,'Jill', 'Morission', 5000)
INSERT INTO customer VALUES
(1,'Michael', 'Ford', 2000)

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
(0,'How Bizarre Versicherungen','Smallland 34',4000)

---- Fill table owned_cars
INSERT INTO insurance_company VALUES
(0,1,0,1,1,1)

---- Fill table car_index
INSERT INTO insurance_company VALUES
(1;'Tesla', 'Model Y')

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
INSERT INTO insurance_company VALUES
(1,'Gold PRemium', 200, 1)
