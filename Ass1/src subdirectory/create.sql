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
PRIMARY KEY   (ipackage_id));
