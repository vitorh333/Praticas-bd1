SELECT pro.name
FROM products pro
JOIN providers p ON p.id = pro.id_providers AND pro.amount BETWEEN 10 AND 20 AND p.name LIKE 'P%'
