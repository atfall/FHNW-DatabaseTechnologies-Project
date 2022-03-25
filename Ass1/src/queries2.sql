----Stored Procedure

----Trigger

----One View of 4 Tables
DROP VIEW V;

CREATE VIEW V 
AS 
SELECT customer.first_name, customer.last_name, car.car_brand, car.car_model, insurance_coverage.package_name, insurance_company.company_name
FROM customer, car, insurance_coverage, insurance_company
WHERE customer.customer_id=car.customer_id
AND customer.package_id=insurance_coverage.package_id
AND insurance_coverage.company_id=insurance_company.company_id;

SELECT * FROM V;
----Update Statement
UPDATE customer SET customer_city = 'New Bern' WHERE customer_id = 2008;
----Delete Statement
DELETE FROM car WHERE car_id = 3011;
