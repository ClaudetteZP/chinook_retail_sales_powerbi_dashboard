USE Chinook;
GO

CREATE VIEW vw_DimCustomer AS
SELECT 
    CustomerId,
    FirstName + ' ' + LastName AS CustomerName,
    Country,
    Email
FROM Customer;
