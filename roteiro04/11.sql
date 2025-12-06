SELECT D.dname, DEP.dlocation 
FROM department D , dept_locations DEP 
WHERE D.dnumber = DEP.dnumber;
