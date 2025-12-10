SELECT c.id, c.name
FROM customers c
WHERE NOT EXISTS(
	SELECT l.id
	FROM locations l
	WHERE l.id_customers = c.id
)
ORDER BY c.id ASC
