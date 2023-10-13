CREATE TABLE positions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description VARCHAR(120)
);

INSERT INTO positions(description)
VALUES('Gerente de vendas'),
('Gerente de compras'),
('Vendedor'),
('Mecânico'),
('Assistente Administrativo');

SELECT * FROM positions;

--DROP TABLE IF EXISTS positions;