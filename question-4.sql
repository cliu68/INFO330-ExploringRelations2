-- Which sales agent made the most in sales in 2010?

SELECT 
employees.LastName,
employees.FirstName,
SUM(total)
	   
FROM employees 

INNER JOIN customers ON employees.EmployeeId = customers.SupportRepId
INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId

WHERE 
employees.Title = 'Sales Support Agent' 
AND invoices.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY employees.EmployeeId order by sum(total) DESC
limit 1;


