CREATE TABLE car_models(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name VARCHAR(120)
);

INSERT INTO car_models(model_name)
VALUES('Conversível'),
('Sedã'),
('Hatch'),
('Coupé'),
('Perua'),
('SUV'),
('Picape'),
('Minivan'),
('Utilitário'),
('Buggy');

SELECT * FROM car_models;

--DROP TABLE IF EXISTS car_models;