SELECT order_id,o.product_id,quantity,
o.unit_price
FROM order_items o 
JOIN products p
ON o.product_id = p.product_id