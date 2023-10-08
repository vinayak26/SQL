SELECT 
o.order_date,
o.order_id,
c.first_name,
s.name,
os.name AS status

FROM 
orders o
JOIN  customers c
	ON c.customer_id = o.customer_id
LEFT JOIN shippers s
	ON s.shipper_id = o.shipper_id
JOIN order_statuses os 
	ON os.order_status_id = o.status
