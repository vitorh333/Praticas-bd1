SELECT CONCAT(e.fname, e.lname, e.salary) as full_name, e.salary as salary
FROM employee e
WHERE e.salary > 50000;
