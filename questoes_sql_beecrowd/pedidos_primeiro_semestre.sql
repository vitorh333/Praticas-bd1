SELECT c.name, o.id
FROM customers c
JOIN orders o ON o.id_customers = c.id AND o.orders_date BETWEEN '2016-01-01' AND '2016-06-30'

