SELECT
    c.year,
    ROUND(AVG(p.price),2) AS avg_price
FROM car c
JOIN pricing p ON c.car_id = p.car_id
GROUP BY c.year
ORDER BY c.year;