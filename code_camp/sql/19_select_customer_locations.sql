--19 - Construa uma consulta capaz de exibir somente os clientes
--que realizaram mais ou igual a 2 locações.

SELECT C.name, C.lastname, COUNT(L.customer_id)
FROM customers AS C
INNER JOIN locations AS L ON (C.id = L.customer_id)
GROUP BY L.customer_id
HAVING COUNT(L.customer_id) >= 2;