SELECT
    f.fuel_type,
    ROUND(AVG(p.price), 2) AS avg_price,
    ROUND(AVG(p.mpg), 2) AS avg_mpg
FROM car c
JOIN fueltypes f ON c.fuel_type_id = f.fuel_type_id
JOIN pricing p ON c.car_id = p.car_id
GROUP BY f.fuel_type;