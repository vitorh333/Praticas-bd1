SELECT l.name, EXTRACT (DAY FROM l.payday) AS day
FROM loan l
