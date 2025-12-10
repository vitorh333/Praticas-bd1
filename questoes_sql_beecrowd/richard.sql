SELECT l.name, ROUND(1.618 * l.omega, 3) AS "Fator N"
FROM life_registry l
JOIN dimensions d ON d.id = l.dimensions_id AND (d.name = 'C875' or d.name = 'C774')
WHERE l.name LIKE 'Richard%'
ORDER BY "Fator N" ASC
