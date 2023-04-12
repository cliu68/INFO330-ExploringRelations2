-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT 
    employees.LastName, 
    employees.FirstName,
    employees.EmployeeId,
    invoices.InvoiceId,
	invoices.InvoiceDate,
	invoices.BillingAddress,
	invoices.BillingCity,
	invoices.BillingCountry,
	invoices.BillingPostalCode,
	invoices.Total,
	invoices.BillingState
	
FROM 
    employees 
    INNER JOIN customers ON employees.EmployeeId = customers.SupportRepId
    INNER JOIN invoices ON invoices.CustomerId = customers.CustomerId
WHERE 
    employees.Title = 'Sales Support Agent';
