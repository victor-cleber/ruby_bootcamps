--22 - Construa uma consulta capaz de exibir qual foi a locação
--com o TOTAL com maior valor.

SELECT 'R$' || MAX(total) AS 'total'
FROM locations;