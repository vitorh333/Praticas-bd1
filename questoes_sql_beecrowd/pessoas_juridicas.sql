SELECT c.name
FROM customers c
JOIN legal_person p ON p.id_customers = c.id
