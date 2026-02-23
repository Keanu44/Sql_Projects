INSERT INTO car
SELECT
    ROW_NUMBER() OVER () AS car_id,
    src.model,
    src."year",
    src.engineSize,
    f.fuel_type_id,
    t.transmission_id
FROM (
    SELECT DISTINCT model, "year", engineSize, fuelType, transmission
    FROM project.main.bmw
) src
JOIN fueltypes f ON src.fuelType = f.fuel_type
JOIN transmissions t ON src.transmission = t.transmission_type;

INSERT INTO pricing
SELECT
    ROW_NUMBER() OVER () AS price_id,
    c.car_id,
    src.price,
    src.mileage,
    src.mpg,
    src.tax
FROM project.main.bmw src
JOIN car c
  ON src.model = c.model
 AND src."year" = c.year
 AND src.engineSize = c.engine_size;