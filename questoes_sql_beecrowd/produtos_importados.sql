SELECT pro.name, p.name, c.name
FROM products pro
JOIN providers p ON p.id = pro.id_providers AND p.name = 'Sansul SA'
JOIN categories c ON c.id = pro.id_categories AND c.name = 'Imported'
