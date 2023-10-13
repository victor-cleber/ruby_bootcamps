CREATE TABLE cars(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(120),
    year INTEGER,
    color VARCHAR(32)
    km DECIMAL(10,2),
    status VARCHAR(17),
    brand_id INTEGER,
    model_id INTEGER,


    FOREIGN KEY(brand_id) REFERENCES car_brand(id)

    FOREIGN KEY(model_id) REFERENCES model(id)
);

INSERT INTO cars(name, year, color, km, status, brand_id, model_id)
VALUES('Chevrolet Onix LT', 2016, 'Preto', 8000, 'Liberado', 1, 3),
('Hyundai HB20 1.', 2022, 'Prata', 3000, 'Em manutenção', 3, 3),
('Toyota Yaris', 2021, 'Branca', 10000, 'Liberado', 2, 3),
('Fiat Cronos', 2022, 'Preto', 2500, 'Liberado', 8, 2),
('Honda HR-V', 2018, 'Prata', 40000, 'Em manutenção', 7, 6),
('VW Amarok', 2019, 'Prata', 25000, 'Liberado', 4, 6);