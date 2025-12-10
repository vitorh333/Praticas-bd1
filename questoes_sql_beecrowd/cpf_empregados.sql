SELECT e.cpf, e.enome, d.dnome
FROM empregados e, departamentos d
WHERE NOT EXISTS(
	SELECT t.cpf_emp
	FROM trabalha t
	WHERE t.cpf_emp = e.cpf
)

AND d.dnumero = e.dnumero

ORDER BY e.cpf ASC
