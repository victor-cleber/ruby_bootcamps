CREATE TABLE locations(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    start_date DATETIME,
    end_date DATETIME,
    total DECIMAL(10,2),
    customer_id INTEGER,
    car_id INTEGER,
    employee_id INTEGER,
    
    FOREIGN KEY(customer_id) REFERENCES customer(id),

    FOREIGN KEY(car_id) REFERENCES car(id),

    FOREIGN KEY(employee_id) REFERENCES employee(id)
);

INSERT INTO locations(start_date, end_date, total, customer_id, car_id, employee_id)
VALUES ('2021-04-01', '2021-04-07', 1500, 1, 1, 2),
('2022-05-20', '2022-05-30', 1800, 2, 1, 5),
('2021-03-10', '2021-03-21', 2500, 5, 6, 5),
('2018-02-20', '2018-03-05', 1250, 6, 4, 6),
('2022-11-20', '2022-11-29', 900, 1, 3, 2),
('2019-10-01', '2019-10-29', 2800, 3, 1, 6);


SELECT * FROM locations;

--DROP TABLE IF EXISTS locations;