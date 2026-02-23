-- Car Dimension
CREATE TABLE car (
    car_id INTEGER,
    model TEXT NOT NULL,
    year INT NOT NULL,
    engine_size NUMERIC,
    fuel_type_id INT,
    transmission_id INT
);


-- Pricing Fact Table
CREATE TABLE pricing (
    price_id INTEGER,
    car_id INT,
    price NUMERIC NOT NULL,
    mileage INT,
    mpg NUMERIC,
    tax INT
);