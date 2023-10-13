CREATE TABLE employees(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100),
    phone VARCHAR(16),
    contract_date DATETIME,
    position_id INTEGER,

    FOREIGN KEY(position_id) REFERENCES position(id)
);


INSERT INTO employees(name, phone, contract_date, position_id)
VALUES('Adriana Lemes', '(11) 98789-9999', '10/04/2021', 1),
('Camila Soares', '(11) 92749-9599', '25/03/2008', 3),
('Leonardo Silva', '(11) 91449-9600', '26/08/2018', 5),
('Mayara Gomes', '(11) 92649-9601', '18/07/2016', 2),
('Matheus Alves', '(11) 92749-9602', '04/03/2015', 5),
('Aline Santos', '(11) 99789-3135', '06/05/2022', 3);

SELECT * FROM employees;

--DROP TABLE IF EXISTS employees;