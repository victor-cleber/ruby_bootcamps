--9 - Construa uma query SQL para editar o campo e-mail do cliente com nome Carolina, 
--onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.

UPDATE customers
SET email = 'carolina@campuscode.com.br'
WHERE name = 'Carolina' AND email = 'carol@ig.com.br';

SELECT * FROM customers 
WHERE email = 'carolina@campuscode.com.br';