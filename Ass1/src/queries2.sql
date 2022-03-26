----Stored Procedure
--Prints car brand and model when the customer id is provided
CREATE OR REPLACE PROCEDURE carOwned(p_customer_id NUMBER)
IS
r_car car%ROWTYPE;
BEGIN
SELECT * INTO r_car FROM car WHERE customer_id = p_customer_id;
DBMS_OUTPUT.PUT_LINE(r_car.car_brand || ', ' || r_car.car_model);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE( SQLERRM );
END;
/

EXEC carOwned(2001)

----Trigger
CREATE OR REPLACE TRIGGER customers_audit_trg AFTER
UPDATE OR DELETE
ON "C##MOUSE"."car"
FOR EACH ROW
DECLARE
l_transaction VARCHAR2(10);
BEGIN
-- determine the transaction type l_transaction := CASE
END;
-- insert a row into the audit table
INSERT INTO audits (table_name, transaction_name, by_user, transaction_date) VALUES('CUSTOMERS', l_transaction, USER, SYSDATE);
END;

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
