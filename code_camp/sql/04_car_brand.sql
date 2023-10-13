CREATE TABLE car_brand(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    brand_name VARCHAR(32)
);

INSERT INTO car_brand(brand_name)
VALUES('Chevrolet'),
('Toyota'),
('Hyundai'),
('Volkswagen'),
('Jeep'),
('Renault'),
('Honda'),
('Fiat');

SELECT * FROM car_brand;


--DROP TABLE IF EXISTS car_brand;