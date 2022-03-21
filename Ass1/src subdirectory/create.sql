---- Create table insurance_company
CREATE TABLE insurance_company
(
icompany_id         INT             NOT NULL, 
icompany_name        VARCHAR(30)     NOT NULL,
icompany_adress      VARCHAR(50)     NOT NULL,
PRIMARY KEY   (icompany_id));


---- Create table insurance_coverage
CREATE TABLE insurance_coverage
(
ipackage_id         INT             NOT NULL, 
ipackage_name       VARCHAR(30)     NOT NULL,
ipackage_cost       INT             NOT NULL,
icompany_id         INT             NOT NULL,
PRIMARY KEY   (ipackage_id))
FOREIGN KEY (icompany_id) REFERENCES insurance_company(icompany_id) );


---- Fill table insurance_company
INSERT INTO insurance_company VALUES
(1, 'Ooops Insurance', 'Next Corner Left 46, 4001 Basel')

INSERT INTO insurance_company VALUES
(2, 'I did it again Insurance Inc.', 'Somewhere over trb, 6060 Overthere')

INSERT INTO insurance_company VALUES
(3, 'Hit me Insure. & Co', 'Wordstreet 11, 4002 Basel')

INSERT INTO insurance_company VALUES
(4, 'Crash test dummies Inc.', 'Death Star 1, 666 Orbit')

INSERT INTO insurance_company VALUES
(5, 'How Bizarre Versicherungen', 'Smörebröd, 898989 Upsala')

INSERT INTO insurance_company VALUES
(6, 'Dont look back in Anger', 'Knie Circus 1, 8001 Züri')

INSERT INTO insurance_company VALUES
(7, 'Crash test dummies Inc.', 'Whats the story 1th, 9 London')

INSERT INTO insurance_company VALUES
(8, 'Would I lie to you?', 'Spotify 111, 401 HTTP')

INSERT INTO insurance_company VALUES
(9, 'Joyride', 'Smörebröd, 898989 Upsala')

INSERT INTO insurance_company VALUES
(10, 'Shiny Happy People (SHP)', 'Hotel California, 1-2-1 Dessert')


---- Fill table insurance_coverage
INSERT INTO insurance_company VALUES
(101, 'Ooops- Nothing Included', 400, 1)
INSERT INTO insurance_company VALUES
(102, 'Ooops- only wheels Included', 401, 1)
INSERT INTO insurance_company VALUES
(103, 'Ooops- we will pay all', 800, 1)
INSERT INTO insurance_company VALUES
(104, 'Ooops- we will pay all and more', 1400, 1)