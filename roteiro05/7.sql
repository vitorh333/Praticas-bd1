SELECT num_projeto, func
FROM (
    SELECT p.pnumber AS num_projeto, COUNT(*) AS func
    FROM employee e, project p, works_on w
    WHERE e.ssn = w.essn AND p.pnumber = w.pno
    GROUP BY p.pnumber
) AS sub
WHERE func = (
    SELECT MIN(func)
    FROM (
        SELECT COUNT(*) AS func
        FROM employee e, project p, works_on w
        WHERE e.ssn = w.essn AND p.pnumber = w.pno
        GROUP BY p.pnumber
    ) AS temp
);

