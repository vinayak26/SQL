CREATE TABLE invoices_archived AS
SELECT 
i.invoice_id,
c.name,
i.invoice_total,
i.payment_total,
i.payment_date
FROM
clients c JOIN invoices i ON 
	i.client_id = c.client_id
WHERE i.payment_date IS NOT NULL 
	