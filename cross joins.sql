use sql_store;

SELECT * FROM shippers s , products p
-- CROSS JOIN products p
	ORDER BY s.shipper_id