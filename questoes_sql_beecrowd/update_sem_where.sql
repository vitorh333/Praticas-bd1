SELECT name, price
FROM(
	SELECT p.type, p.id, p.name, 
	CASE
		WHEN p.type = 'A' THEN 20.0
		WHEN p.type = 'B' THEN 70.0
		WHEN p.type = 'C' THEN 530.5
		ELSE 0
	END AS price

	FROM products p
	ORDER BY p.type ASC, p.id DESC
) AS sub
