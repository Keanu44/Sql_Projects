SELECT Name, SUM(Births) AS num_births
FROM names_clean
WHERE Gender = 'F'
GROUP BY Name
ORDER BY num_births DESC
LIMIT 1;--Jessica

SELECT Name, SUM(Births) AS num_births
FROM names_clean
WHERE Gender = 'M'
GROUP BY Name
ORDER BY num_births DESC
LIMIT 1;--Michael