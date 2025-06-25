USE Chinook;
GO

CREATE OR ALTER VIEW vw_DimProduct AS
SELECT 
    t.TrackId,
    t.Name AS ProductName,
    g.Name AS Genre,
    a.Title AS Album,
    ar.Name AS Artist
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Artist ar ON a.ArtistId = ar.ArtistId;

