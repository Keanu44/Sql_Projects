SELECT 
c.model,
ROUND(AVG(p.price),2) AS avg_price,
RANK() OVER (ORDER BY AVG(p.price) DESC) AS price_rank
FROM car c
JOIN pricing p ON c.car_id = p.car_id 
GROUP BY c.model;