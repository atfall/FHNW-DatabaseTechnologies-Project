---- Create table insurance_company
CREATE TABLE insurance_company
(
company_id          INT             NOT NULL, 
company_name        VARCHAR(30)     NOT NULL,
company_adress      VARCHAR(50)     NOT NULL,
PRIMARY KEY   (company_id));


---- Create table insurance_coverage
CREATE TABLE insurance_coverage
(
package_id         INT             NOT NULL, 
package_name       VARCHAR(30)     NOT NULL,
package_cost       INT             NOT NULL,
company_id         INT             NOT NULL,
PRIMARY KEY   (package_id),
FOREIGN KEY (company_id) REFERENCES insurance_company(company_id));


---- Create table customer
CREATE TABLE customer
(
customer_id         INT             NOT NULL, 
first_name          VARCHAR(30)     NOT NULL,
last_name           VARCHAR(30)     NOT NULL,
customer_address    VARCHAR(50)     NOT NULL,
package_id          INT             NOT NULL,
PRIMARY KEY   (customer_id),
FOREIGN KEY   (package_id) REFERENCES insurance_coverage(package_id));


---- Create table car
CREATE TABLE car
(
car_id         INT             NOT NULL, 
car_brand      VARCHAR(30)     NOT NULL,
car_model      VARCHAR(30)     NOT NULL,
car_colour     VARCHAR(30)     NOT NULL,
milage         INT             NOT NULL,
customer_id    INT             NOT NULL,
PRIMARY KEY   (car_id),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id));


---- Fill table insurance_company
INSERT INTO insurance_company VALUES
(1, 'Ooops Insurance', 'Next Corner Left 46, 4001 Basel');
INSERT INTO insurance_company VALUES
(2, 'I did it again Insurance Inc.', 'Somewhere over trb, 6060 Overthere');
INSERT INTO insurance_company VALUES
(3, 'Hit me Insure. and Co', 'Wordstreet 11, 4002 Basel');
INSERT INTO insurance_company VALUES
(4, 'Crash test dummies Inc.', 'Death Star 1, 666 Orbit');
INSERT INTO insurance_company VALUES
(5, 'How Bizarre Versicherungen', 'Sm�rebr�d, 898989 Upsala');
INSERT INTO insurance_company VALUES
(6, 'Dont look back in Anger', 'Knie Circus 1, 8001 Z�ri');
INSERT INTO insurance_company VALUES
(7, 'Crash test dummies Inc.', 'Whats the story 1th, 9 London');
INSERT INTO insurance_company VALUES
(8, 'Would I lie to you?', 'Spotify 111, 401 HTTP');
INSERT INTO insurance_company VALUES
(9, 'Joyride', 'Sm�rebr�d, 898989 Upsala');
INSERT INTO insurance_company VALUES
(10, 'Shiny Happy People (SHP)', 'Hotel California, 1-2-1 Dessert');


---- Fill table insurance_coverage
INSERT INTO insurance_coverage VALUES
(101, 'Ooops- Nothing Included', 400, 1);
INSERT INTO insurance_coverage VALUES
(102, 'Ooops- only wheels Included', 401, 1);
INSERT INTO insurance_coverage VALUES
(103, 'Ooops- we will pay all', 800, 1);
INSERT INTO insurance_coverage VALUES
(104, 'Ooops- we will pay all and more', 1400, 1);

---- Fill table customer
INSERT INTO customer VALUES
(2001, 'John', 'Addams', 'Home Town', 101);
INSERT INTO customer VALUES
(2002, 'Mary', 'Jones', 'New Town', 102);
INSERT INTO customer VALUES
(2003, 'Stephen', 'Dylan', 'Basel', 103);
INSERT INTO customer VALUES
(2004, 'Rebeca', 'Garcia', 'Bern', 104);
INSERT INTO customer VALUES
(2005, 'Rudi', 'Beck', 'Basel', 104);
INSERT INTO customer VALUES
(2006, 'Louie', 'Quintana', 'Basel', 102);
INSERT INTO customer VALUES
(2007, 'Ashanti', 'Ashley', 'Basel', 103);
INSERT INTO customer VALUES
(2008, 'Hubert', 'Shelton', 'Bern', 104);
INSERT INTO customer VALUES
(2009, 'Tom', 'Piper', 'Basel', 103);
INSERT INTO customer VALUES
(2010, 'Jill', 'Morrison', 'Zurich', 104);

---- Fill table car
INSERT INTO car VALUES
(3001, 'Ford', 'Focus', 'Red', 10, 2001);
INSERT INTO car VALUES
(3002, 'Tesla', 'Model 3', 'Blue', 20, 2002);
INSERT INTO car VALUES
(3003, 'Toyota', 'Prius', 'Blue', 15, 2003);
INSERT INTO car VALUES
(3004, 'Volkswagen', 'Golf', 'Black', 25, 2004);
INSERT INTO car VALUES
(3005, 'BMW', 'M3', 'Red', 50, 2005);
INSERT INTO car VALUES
(3006, 'Mercedes', 'S-Class', 'Silver', 40, 2006);
INSERT INTO car VALUES
(3007, 'Volkswagen', 'UP', 'Red', 12, 2007);
INSERT INTO car VALUES
(3008, 'BMW', 'i3', 'Black', 15, 2008);
INSERT INTO car VALUES
(3009, 'Audi', 'R8', 'Red', 10, 2009);
INSERT INTO car VALUES
(3010, 'Volvo', 'V60', 'Blue', 20, 2010);