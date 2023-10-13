--18 - Construa uma consulta capaz de exibir somente os
--funcionários que realizaram mais ou igual a 2 locações.

SELECT E.name, COUNT(L.employee_id) AS 'locations'
FROM locations AS L
INNER JOIN employees AS E ON(L.employee_id = E.id)
GROUP BY L.employee_id
HAVING COUNT(L.employee_id) >= 2;