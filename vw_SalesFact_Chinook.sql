
USE Chinook;
GO

CREATE VIEW vw_SalesFact AS
SELECT 
    i.InvoiceId,
    CONVERT(DATE, i.InvoiceDate) AS OrderDate,
    i.CustomerId,
    il.TrackId,
    il.UnitPrice,
    il.Quantity,
    il.UnitPrice * il.Quantity AS LineTotal
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId;
