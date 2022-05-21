---- Sweet introduction
/* 
Welcome to the Smash-Brothers Broker Company! We are the leading broker for your car insurance!
We have a small database with our favourite customers and our prefered insurance provider.
You can see what fancy cars we have insured and what famous customers we have in our portfolio.
*/

---- clean-up for create new tables
DROP TABLE insurance_company;
DROP TABLE insurance_coverage;
DROP TABLE customer;
DROP TABLE car;
DROP TABLE city;


---- Create table insurance_company
CREATE TABLE insurance_company
(
company_id          INT             NOT NULL, 
company_name        VARCHAR(30)     NOT NULL,
company_street      VARCHAR(50)     NOT NULL,
city_zip            INT             NOT NULL,
PRIMARY KEY   (company_id),
FOREIGN KEY (city_zip) REFERENCES city(city_zip));


---- Create table insurance_coverage
CREATE TABLE insurance_coverage
(
package_id         INT             NOT NULL, 
package_name       VARCHAR(50)     NOT NULL,
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
city_zip            INT             NOT NULL,
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


---- Create table city
CREATE TABLE insurance_company
(
city_zip         INT             NOT NULL, 
city_name        VARCHAR(30)     NOT NULL,
PRIMARY KEY   (city_zip,));


---- Fill table insurance_company
INSERT INTO insurance_company VALUES
(1, 'Ooops Insurance', 'Next Corner Left 46', 4000);
INSERT INTO insurance_company VALUES
(2, 'I did it again Insurance Inc.', 'Somewhere over trb', 5000);
INSERT INTO insurance_company VALUES
(3, 'Hit me Insure and Co', 'Wordstreet 11', 4000);
INSERT INTO insurance_company VALUES
(4, 'Crash test dummies Inc.', 'Death Star 1', 6000);
INSERT INTO insurance_company VALUES
(5, 'How Bizarre Versicherungen', 'Smallland 34', 999999);
INSERT INTO insurance_company VALUES
(6, 'Dont look back in Anger', 'Knie Circus 1', 9000);
INSERT INTO insurance_company VALUES
(7, 'Crash test dummies Inc.', 'Whats the story 1th', 90009);
INSERT INTO insurance_company VALUES
(8, 'Would I lie to you?', 'Spotify 111', 401);
INSERT INTO insurance_company VALUES
(9, 'Joyride', 'IKEA Road 1', 999999);
INSERT INTO insurance_company VALUES
(10, 'Shiny Happy People (SHP)', 'Hotel California', 4011);


---- Fill table insurance_coverage
INSERT INTO insurance_coverage VALUES
(101, 'Ooops- Nothing Included', 400, 1);
INSERT INTO insurance_coverage VALUES
(102, 'Ooops- only wheels Included', 401, 1);
INSERT INTO insurance_coverage VALUES
(103, 'Ooops- we will pay all', 800, 1);
INSERT INTO insurance_coverage VALUES
(104, 'Ooops- we will pay all and more', 1400, 1);

INSERT INTO insurance_coverage VALUES
(201, 'Basic', 99, 2);
INSERT INTO insurance_coverage VALUES
(202, 'Medium', 199, 2);
INSERT INTO insurance_coverage VALUES
(203, 'All', 499, 2);

INSERT INTO insurance_coverage VALUES
(301, 'Bleu', 105, 3);
INSERT INTO insurance_coverage VALUES
(302, 'Rare', 205, 3);
INSERT INTO insurance_coverage VALUES
(303, 'Medium Rare', 305, 3);
INSERT INTO insurance_coverage VALUES
(304, 'Medium Rare', 405, 3);
INSERT INTO insurance_coverage VALUES
(305, 'Well Done', 505, 3);

INSERT INTO insurance_coverage VALUES
(401, 'one', 101, 4);
INSERT INTO insurance_coverage VALUES
(402, 'two', 202, 4);
INSERT INTO insurance_coverage VALUES
(403, 'three', 303, 4);
INSERT INTO insurance_coverage VALUES
(404, 'four', 404, 4);
INSERT INTO insurance_coverage VALUES
(405, 'five', 505, 4);

INSERT INTO insurance_coverage VALUES
(501, 'this', 200, 5);
INSERT INTO insurance_coverage VALUES
(502, 'that', 500, 5);

INSERT INTO insurance_coverage VALUES
(601, 'this', 200, 6);

INSERT INTO insurance_coverage VALUES
(701, 'it wasnt me', 402, 7);

INSERT INTO insurance_coverage VALUES
(801, 'hit someone', 100, 8);
INSERT INTO insurance_coverage VALUES
(802, 'got hit', 500, 8);
INSERT INTO insurance_coverage VALUES
(803, 'idk what happend', 1000, 8);

INSERT INTO insurance_coverage VALUES
(901, '909', 909, 9);
INSERT INTO insurance_coverage VALUES
(902, '911', 911, 9);
INSERT INTO insurance_coverage VALUES
(903, '919', 919, 9);

INSERT INTO insurance_coverage VALUES
(1001, 'you get nothing', 999, 10);

---- Fill table customer
INSERT INTO customer VALUES
(2001, 'Michael', 'Knight', 89108, 101);
INSERT INTO customer VALUES
(2002, 'Doc', 'Brown', 1, 102);
INSERT INTO customer VALUES
(2003, 'Batman', 'The', 12345, 103);
INSERT INTO customer VALUES
(2004, 'Till', 'Schweiger', 8000, 304);
INSERT INTO customer VALUES
(2005, 'Stephan', 'King', 1011, 304);
INSERT INTO customer VALUES
(2006, 'Ghostbusters', 'Who you gonna call', 4000, 102);
INSERT INTO customer VALUES
(2007, 'Ashanti', 'Ashley', 4000, 103);
INSERT INTO customer VALUES
(2008, 'Hubert', 'Shelton', 8000, 201);
INSERT INTO customer VALUES
(2009, 'Tom', 'Piper', 4000, 103);
INSERT INTO customer VALUES
(2010, 'Jill', 'Morrison', 9000, 304);
INSERT INTO customer VALUES
(2011, 'Scooby', 'Doo', 86000, 104);
INSERT INTO customer VALUES
(2012, 'Thomas', 'Edison', 567890, 103);

---- Fill table car
INSERT INTO car VALUES
(3001, 'Ford', 'Focus', 'Red', 10, 2001);
INSERT INTO car VALUES
(3002, 'Tesla', 'Model 3', 'Blue', 20, 2002);
INSERT INTO car VALUES
(3003, 'DeLorean ', 'DMC-12', 'Silver', 15, 2003);
INSERT INTO car VALUES
(3004, 'Batmobile', 'Tumbler', 'Black', 25, 2004);
INSERT INTO car VALUES
(3005, 'GMC', 'Vandura', 'Black-Red', 50, 2005);
INSERT INTO car VALUES
(3006, 'Opel', 'Manta', 'Yellow', 40, 2006);
INSERT INTO car VALUES
(3007, 'Plymouth', 'Fury Christine', 'Red', 12, 2007);
INSERT INTO car VALUES
(3008, 'BMW', 'i3', 'Red', 15, 2008);
INSERT INTO car VALUES
(3009, 'KITT', 'One', 'Black', 10, 2009);
INSERT INTO car VALUES
(3010, 'Cadilac', 'ECTO-1', 'White', 20, 2010);
INSERT INTO car VALUES
(3011, 'Unknown', 'Unknown', 'Blue', 20, 2011);
INSERT INTO car  VALUES
(3012, 'Tesla', 'Model Y', 'Yellow', 99, 2012);


---- Fill table city
INSERT INTO city VALUES
(4000, 'Basel');
INSERT INTO city VALUES
(5000, 'Overthere');
INSERT INTO city VALUES
(6000, 'Orbit');
INSERT INTO city VALUES
(9000, 'Zurich');
INSERT INTO city VALUES
(999999, 'Upsala');
INSERT INTO city VALUES
(90009, 'London');
INSERT INTO city VALUES
(401, 'HTTP');
INSERT INTO city VALUES
(4011, 'Dessert');
INSERT INTO city VALUES
(89108, 'Nevada');
INSERT INTO city VALUES
(1, 'New Town');
INSERT INTO city VALUES
(12345, 'Gotham City');
INSERT INTO city VALUES
(1011, 'Portland');
INSERT INTO city VALUES
(8000, 'Bern');
INSERT INTO city VALUES
(86000, 'Dooville');
INSERT INTO city VALUES
(567890, 'New Jersey');
