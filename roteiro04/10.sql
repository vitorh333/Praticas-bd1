SELECT E.fname AS employee 
FROM employee E, employee S 
WHERE E.superssn = S.ssn AND s.fname = 'Franklin';
