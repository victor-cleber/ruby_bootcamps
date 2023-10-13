--17 - Construa uma consulta capaz de exibir todos os
--funcionários e seus respectivos cargos

SELECT E.name AS 'Funcionário', P.description AS 'Cargo'
FROM employees AS E
INNER JOIN positions as P ON(E.position_id = P.id);