SELECT pro.name, p.name, pro.price
FROM products pro
JOIN providers p ON p.id = pro.id_providers
JOIN categories c ON c.id = pro.id_categories AND c.name = 'Super Luxury'
WHERE pro.price > 1000
