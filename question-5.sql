-- What was the most purchased track of 2013?
select 
tracks.TrackId,
sum(invoice_items.Quantity),
tracks.Name

from tracks

inner join 
invoice_items on invoice_items.TrackId = tracks.TrackId
inner join 
invoices on invoices.InvoiceId = invoice_items. InvoiceId

where
invoices.InvoiceDate between '2013-01-01' and '2013-12-31'
group by tracks.TrackId order by sum(invoice_items.Quantity) DESC;



