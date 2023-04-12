-- Find tracks (id, name and composer) that are part of a line in an invoice.
select 
tracks.TrackId,
tracks.Composer,
tracks.Name

from tracks
inner join invoice_items on invoice_items.TrackId = tracks.TrackId;
