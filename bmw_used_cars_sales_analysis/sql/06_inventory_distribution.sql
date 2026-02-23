SELECT
    c.model,
    COUNT(*) AS listings
FROM car c
GROUP BY c.model
ORDER BY listings DESC;