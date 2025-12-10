(
	SELECT c.city_name, c.population
	FROM cities c
	ORDER BY c.population DESC
	LIMIT 1 OFFSET 1
)

UNION ALL
(
	SELECT c.city_name, c.population
	FROM cities c
	ORDER BY c.population ASC
	LIMIT 1 OFFSET 1
)
