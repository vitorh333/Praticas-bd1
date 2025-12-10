SELECT pro.name, f.name
FROM products pro, providers f
WHERE pro.id_providers = f.id AND f.name = 'Ajax SA'
