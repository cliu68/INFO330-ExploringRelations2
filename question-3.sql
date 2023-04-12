-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT 
    artists.Name AS ArtistName, 
    tracks.Name AS TrackName,
    invoice_items.InvoiceLineId,
    invoice_items.InvoiceId,
    invoice_items.Quantity,
    invoice_items.UnitPrice,
    invoice_items.TrackId
	
FROM 
    artists
    INNER JOIN albums ON artists.ArtistId = albums.ArtistId
    INNER JOIN tracks ON albums.AlbumId = tracks.AlbumId
    INNER JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
	
WHERE
    artists.ArtistId = albums.ArtistId;

    