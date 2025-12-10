SELECT c.name, ROUND((2*s.math + 3*s.specific + 5*s.project_plan) / 10, 2) AS avg
FROM candidate c
JOIN score s ON c.id = s.candidate_id
ORDER BY avg DESC
