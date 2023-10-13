--23 - Construa uma consulta capaz de exibir todas as locações realizadas, 
--entre as datas “2022-05-20” a “2022-12-25”



SELECT CS.name AS 'customer', CR.name AS 'location', L.start_date AS 'de', L.end_date AS 'ate', 'R$' || L.total AS total, E.name AS 'employee'
FROM  customers AS CS
INNER JOIN locations AS L ON (CS.id = L.customer_id)
INNER JOIN cars AS CR ON (L.car_id = CR.id)
INNER JOIN employees AS E ON (L.employee_id = E.id)
WHERE start_date >= '2022-05-20' AND end_date <= '2022-12-25';