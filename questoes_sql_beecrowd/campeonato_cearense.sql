SELECT t.name, 

SUM(CASE
	WHEN t.id = j.team_1 OR t.id = j.team_2 THEN 1
	ELSE 0
END) AS matches,

SUM(CASE
	WHEN t.id = j.team_1 AND j.team_1_goals > j.team_2_goals THEN 1
	WHEN t.id = j.team_2 AND j.team_2_goals > j.team_1_goals THEN 1
	ELSE 0
END) AS victories,

SUM(CASE
	WHEN t.id = j.team_1 AND j.team_1_goals < j.team_2_goals THEN 1
	WHEN t.id = j.team_2 AND j.team_2_goals < j.team_1_goals THEN 1
	ELSE 0
END) AS defeats,

SUM(CASE
	WHEN t.id = j.team_1 AND j.team_1_goals = j.team_2_goals THEN 1
	WHEN t.id = j.team_2 AND j.team_2_goals = j.team_1_goals THEN 1
	ELSE 0
END) AS draws,

SUM(CASE 
        WHEN t.id = j.team_1 AND j.team_1_goals > j.team_2_goals THEN 3
        WHEN t.id = j.team_2 AND j.team_2_goals > j.team_1_goals THEN 3
        WHEN j.team_1_goals = j.team_2_goals AND (t.id = j.team_1 OR t.id = j.team_2) THEN 1
        ELSE 0
END) AS score

FROM teams t
JOIN matches j ON t.id = j.team_1 OR t.id = j.team_2
GROUP BY t.name
ORDER BY victories DESC, score DESC

