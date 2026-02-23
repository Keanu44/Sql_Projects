-- Fuel Types
CREATE TABLE fueltypes (
    fuel_type_id INTEGER,
    fuel_type TEXT UNIQUE NOT NULL
);

INSERT INTO fueltypes
SELECT
    ROW_NUMBER() OVER () AS fuel_type_id,
    fuelType
FROM (
    SELECT DISTINCT fuelType
    FROM project.main.bmw
    WHERE fuelType IS NOT NULL
);

-- Transmission Types
CREATE TABLE transmissions (
    transmission_id INTEGER,
    transmission_type TEXT UNIQUE NOT NULL
);

INSERT INTO transmissions
SELECT
    ROW_NUMBER() OVER () AS transmission_id,
    transmission
FROM (
    SELECT DISTINCT transmission
    FROM project.main.bmw
    WHERE transmission IS NOT NULL
);