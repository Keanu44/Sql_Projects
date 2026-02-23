SELECT
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    ROUND(AVG(price),2) AS avg_price
FROM pricing;