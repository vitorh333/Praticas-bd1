SELECT department.name
FROM department, dept_locations
WHERE department.dnumber = dept_locations.dnumber AND LEFT(dept_locations.dlocations, 1) = 'S'
