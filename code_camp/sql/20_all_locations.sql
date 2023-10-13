--20 - Construa uma consulta capaz de exibir todas as 
--locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação
--do funcionário vinculados em cada

SELECT CS.name AS 'customer', CR.name AS 'location', E.name AS 'employee'
FROM  customers AS CS
INNER JOIN locations AS L ON (CS.id = L.customer_id)
INNER JOIN cars AS CR ON (L.car_id = CR.id)
INNER JOIN employees AS E ON (L.employee_id = E.id)
