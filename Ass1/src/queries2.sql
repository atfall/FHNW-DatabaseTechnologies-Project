----Stored Procedure
CREATE PROCEDURE selectAllCustomers
AS
SELECT * FROM customer
GO;

EXEC selectAllCustomers;
