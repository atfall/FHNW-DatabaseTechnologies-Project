---- clean-up for create new tables
DROP TABLE owned_cars;
DROP TABLE customer;
DROP TABLE insurance_package;
DROP TABLE insurance_company;
DROP TABLE city;
DROP TABLE car_colour;
DROP TABLE car_index;

CREATE TABLE car_colour (
    colour_id INTEGER NOT NULL,
    colour    VARCHAR2(10) NOT NULL
);

ALTER TABLE car_colour ADD CONSTRAINT car_colour_pk PRIMARY KEY ( colour_id );

CREATE TABLE car_index (
    car_id INTEGER NOT NULL,
    brand  VARCHAR2(50) NOT NULL,
    model  VARCHAR2(50) NOT NULL
);

ALTER TABLE car_index ADD CONSTRAINT car_index_pk PRIMARY KEY ( car_id );

CREATE TABLE city (
    city_zip  INTEGER NOT NULL,
    city_name VARCHAR2(50) NOT NULL
);

ALTER TABLE city ADD CONSTRAINT city_pk PRIMARY KEY ( city_zip );

CREATE TABLE customer (
    customer_id INTEGER NOT NULL,
    first_name  VARCHAR2(50) NOT NULL,
    last_name   VARCHAR2(50) NOT NULL,
    zip_code    INTEGER NOT NULL
);

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( customer_id );

CREATE TABLE insurance_company (
    company_id     INTEGER NOT NULL,
    company_name   VARCHAR2(50) NOT NULL,
    company_street VARCHAR2(50) NOT NULL,
    zip_code       INTEGER NOT NULL
);

ALTER TABLE insurance_company ADD CONSTRAINT insurance_company_pk PRIMARY KEY ( company_id );

CREATE TABLE insurance_package (
    package_id   INTEGER NOT NULL,
    package_name VARCHAR2(50) NOT NULL,
    package_cost FLOAT NOT NULL,
    company_id   INTEGER NOT NULL
);

ALTER TABLE insurance_package ADD CONSTRAINT insurance_package_pk PRIMARY KEY ( package_id );

CREATE TABLE owned_cars (
    owned_car_id  INTEGER NOT NULL,
    milage        INTEGER NOT NULL,
    car_colour_id INTEGER NOT NULL,
    package_id    INTEGER NOT NULL,
    customer_id   INTEGER NOT NULL,
    car_index_id  INTEGER NOT NULL
);

-- CREATE UNIQUE INDEX owned_cars__idx ON
--    owned_cars (
--        car_index_id
--    ASC );

ALTER TABLE owned_cars ADD CONSTRAINT owned_cars_pk PRIMARY KEY ( owned_car_id );

ALTER TABLE owned_cars
    ADD CONSTRAINT car_colour_fk FOREIGN KEY ( car_colour_id )
        REFERENCES car_colour ( colour_id );

ALTER TABLE owned_cars
    ADD CONSTRAINT car_index_fk FOREIGN KEY ( car_index_id )
        REFERENCES car_index ( car_id );

ALTER TABLE customer
    ADD CONSTRAINT customer_city_fk FOREIGN KEY ( zip_code )
        REFERENCES city ( city_zip );

ALTER TABLE owned_cars
    ADD CONSTRAINT customer_id_fk FOREIGN KEY ( customer_id )
        REFERENCES customer ( customer_id );

ALTER TABLE insurance_company
    ADD CONSTRAINT insurance_company_city_fk FOREIGN KEY ( zip_code )
        REFERENCES city ( city_zip );

ALTER TABLE insurance_package
    ADD CONSTRAINT insurance_company_fk FOREIGN KEY ( company_id )
        REFERENCES insurance_company ( company_id );

ALTER TABLE owned_cars
    ADD CONSTRAINT insurance_package_fk FOREIGN KEY ( package_id )
        REFERENCES insurance_package ( package_id );


---- Fill table car_colour
INSERT INTO car_colour VALUES
(0,'Unknown');
INSERT INTO car_colour VALUES
(1,'Black');
INSERT INTO car_colour VALUES
(2,'Blue');
INSERT INTO car_colour VALUES
(3,'Red');
INSERT INTO car_colour VALUES
(4,'Green');

---- Fill table city
INSERT INTO city VALUES
(4000,'Basel');
INSERT INTO city VALUES
(1000,'Brussel');
INSERT INTO city VALUES
(2000,'Nevada');
INSERT INTO city VALUES
(3000,'Gotham City');
INSERT INTO city VALUES
(5000,'Dooville');
INSERT INTO city VALUES
(6000,'New Town');
INSERT INTO city VALUES
(7000,'Qoqassic World');
INSERT INTO city VALUES
(8000,'Bern');
INSERT INTO city VALUES
(9000,'Zurich');
INSERT INTO city VALUES
(401,'HTTP');

---- Fill table customer
INSERT INTO customer VALUES
(1,'Michael', 'Knight', 4000);
INSERT INTO customer VALUES
(2,'The', 'Batman', 4000);
INSERT INTO customer VALUES
(3,'Till', 'Schweiger', 1000);
INSERT INTO customer VALUES
(4,'Stephan', 'King', 401);
INSERT INTO customer VALUES
(5,'Queen', 'Elisabeth', 5000);
INSERT INTO customer VALUES
(6,'Ashanti', 'Ashley', 7000);
INSERT INTO customer VALUES
(7,'Shelton', 'Hubert', 6000);
INSERT INTO customer VALUES
(8,'Tom', 'Piper', 8000);
INSERT INTO customer VALUES
(9,'Jill', 'Morission', 5000);
INSERT INTO customer VALUES
(10,'Michael', 'Ford', 2000);

---- Fill table insurance_company
INSERT INTO insurance_company VALUES
(1,'How Bizarre Versicherungen','Smallland 34',4000);
INSERT INTO insurance_company VALUES
(2,'Ooops Insurance','Next Corner Left 46',4000);
INSERT INTO insurance_company VALUES
(3,'I did it again Insurance Inc.','Wordstreet 11',2000);
INSERT INTO insurance_company VALUES
(4,'Crash test dummies Inc.','Death Star 1',3000);
INSERT INTO insurance_company VALUES
(5,'Would I lie to you','Spotify 111',9000);

---- Fill table car_index
INSERT INTO car_index VALUES
(1000,'Tesla', 'Model Y');
INSERT INTO car_index VALUES
(2000,'Ford', 'Focus');
INSERT INTO car_index VALUES
(4000,'DeLorean', 'DMC-12');
INSERT INTO car_index VALUES
(5000,'Batmobile', 'Tumbler');
INSERT INTO car_index VALUES
(6000,'Opel', 'Manta');
INSERT INTO car_index VALUES
(7000,'GMC', 'Vandura');
INSERT INTO car_index VALUES
(8000,'BMW', 'i3');
INSERT INTO car_index VALUES
(1001,'Tesla', 'Model 3');
INSERT INTO car_index VALUES
(9000,'Cadilac', 'ETCO-1');
INSERT INTO car_index VALUES
(0000,'Unknown', 'Unknown');

---- Fill table insurance_package
INSERT INTO insurance_package VALUES
(20,'Ooops- Nothing Included', 100, 2);
INSERT INTO insurance_package VALUES
(21,'Ooops- only wheels Included', 200, 2);
INSERT INTO insurance_package VALUES
(22,'Ooops- we will pay all', 300, 2);
INSERT INTO insurance_package VALUES
(23,'Ooops- we will pay all and more', 1000, 2);
INSERT INTO insurance_package VALUES
(31,'Basic', 99, 3);
INSERT INTO insurance_package VALUES
(32,'Medium', 199, 3);
INSERT INTO insurance_package VALUES
(34,'Medium Rare', 299, 3);
INSERT INTO insurance_package VALUES
(41,'one', 101, 4);
INSERT INTO insurance_package VALUES
(43,'two', 202, 4);
INSERT INTO insurance_package VALUES
(42,'three', 202, 4);
INSERT INTO insurance_package VALUES
(666,'you get nothing', 0, 1);

---- Fill table owned_cars
INSERT INTO owned_cars VALUES
(1,1111,1,22,9,1000);
INSERT INTO owned_cars VALUES
(2,10,2,21,8,6000);
INSERT INTO owned_cars VALUES
(3,256000,3,31,7,6000);
INSERT INTO owned_cars VALUES
(4,454545,4,41,6,7000);
INSERT INTO owned_cars VALUES
(5,4523,4,32,5,5000);
INSERT INTO owned_cars VALUES
(6,47896,0,22,4,5000);
INSERT INTO owned_cars VALUES
(7,23654,2,41,4,4000);
INSERT INTO owned_cars VALUES
(8,1452,3,666,3,2000);
INSERT INTO owned_cars VALUES
(9,2541,2,42,2,1000);
INSERT INTO owned_cars VALUES
(10,1524,2,41,1,1001);


----Stored Procedure
--Prints company and available packages when the company id is provided
CREATE OR REPLACE PROCEDURE availablePackages(p_company_id NUMBER)
IS
r_package varchar(50);
r_company_name varchar(50);
BEGIN
SELECT company_name INTO r_company_name FROM insurance_company WHERE company_id = p_company_id;
for c in (SELECT package_name INTO r_package FROM insurance_package WHERE company_id = p_company_id)
loop
r_package:=c.package_name;
DBMS_OUTPUT.PUT_LINE(r_company_name || ': ' || r_package);
end loop;
END;
/

EXEC availablePackages(2)