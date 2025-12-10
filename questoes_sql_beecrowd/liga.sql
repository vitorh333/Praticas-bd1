SELECT name FROM (
	SELECT name, position FROM (
		SELECT CONCAT('Podium: ', team) AS name, position
		FROM league
		ORDER BY position ASC
		LIMIT 3
	) AS podium

	UNION ALL

	SELECT name, position FROM (
		SELECT CONCAT('Demoted: ', team) AS name, position
		FROM league
		ORDER BY position DESC
		LIMIT 2
	) AS demoted
) AS geral

ORDER BY position ASC

