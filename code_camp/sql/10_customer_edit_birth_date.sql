--10 - Construa uma query SQL para editar a data de nascimento do cliente com nome Josefa para “1986-06-19”.

UPDATE customers 
SET birth_date = '1986-06-19'
WHERE name = 'Josefa';

SELECT * FROM customers where name = 'Josefa';