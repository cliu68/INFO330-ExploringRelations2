-- Which sales agent made the most in sales in 2010?

SELECT 
employees.LastName,
employees.FirstName,
invoice_items.*,
SUM(total)
	   
FROM employees 

INNER JOIN customers ON employees.EmployeeId = customers.SupportRepId
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
INNER JOIN invoice_items ON invoice_items.InvoiceId = invoices.InvoiceId

WHERE 
employees.Title = 'Sales Support Agent' 
AND invoices.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY employees.LastName, employees.FirstName;


