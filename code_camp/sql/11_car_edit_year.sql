--11 - Construa uma query SQL para editar o ano do automóvel com nome Fiat Cronos de “2022” para “2019” da tabela de CARS

UPDATE cars 
SET year = 2019
WHERE name = 'Fiat Cronos' AND year = 2022;

SELECT * FROM cars where name = 'Fiat Cronos';