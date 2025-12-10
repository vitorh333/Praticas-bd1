SELECT l.name, l.customers_number
FROM lawyers l
WHERE (
	l.customers_number = (SELECT MAX(l2.customers_number) FROM lawyers l2)
)

UNION ALL
(
	SELECT l.name, l.customers_number
	FROM lawyers l
	WHERE l.customers_number = (SELECT MIN(l2.customers_number) FROM lawyers l2)
)

UNION ALL
(
	SELECT 'Average' AS name,
	CAST(AVG(customers_number) AS INTEGER) AS customers_number
	FROM lawyers
)
