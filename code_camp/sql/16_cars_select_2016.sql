--16 - Construa uma consulta capaz de exibir todos os 
--automóveis do ano 2016.

SELECT C.name, C.year, C.color, C.km, C.status, CB.brand_name AS 'brand', CM.model_name as 'model'
FROM cars AS C
INNER JOIN car_brand AS CB ON(C.brand_id == CB.id)
INNER JOIN car_models AS CM ON(C.model_id == CM.id);