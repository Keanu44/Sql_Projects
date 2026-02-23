SELECT
CASE 
    WHEN mileage < 20000 THEN 'Low mileage'
    WHEN mileage BETWEEN 20000 AND 60000 THEN 'Mid mileage'
    ELSE 'High Mileage'
END AS mileage_band,
ROUND(AVG(price),2) AS avg_price
FROM pricing
GROUP BY mileage_band;SELECT
CASE 
    WHEN mileage < 20000 THEN 'Low mileage'
    WHEN mileage BETWEEN 20000 AND 60000 THEN 'Mid mileage'
    ELSE 'High Mileage'
END AS mileage_band,
ROUND(AVG(price),2) AS avg_price
FROM pricing
GROUP BY mileage_band;