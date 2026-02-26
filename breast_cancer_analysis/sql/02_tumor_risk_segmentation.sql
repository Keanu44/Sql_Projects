WITH tumor_groups AS (
    SELECT *,
        CASE 
            WHEN tumor_size < 20 THEN 'Small'
            WHEN tumor_size BETWEEN 20 AND 50 THEN 'Medium'
            ELSE 'Large'
        END AS tumor_category
    FROM breast_cancer_clean
)
SELECT 
    tumor_category,
    COUNT(*) AS total_patients,
    ROUND(
        SUM(CASE WHEN status = 'Dead' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS mortality_rate_percentage
FROM tumor_groups
GROUP BY tumor_category
ORDER BY mortality_rate_percentage DESC;

┌────────────────┬────────────────┬───────────────────────────┐
│ tumor_category │ total_patients │ mortality_rate_percentage │
│    varchar     │     int64      │          double           │
├────────────────┼────────────────┼───────────────────────────┤
│ Large          │            580 │                     23.28 │
│ Medium         │           2035 │                     17.05 │
│ Small          │           1409 │                      9.51 │
└────────────────┴────────────────┴───────────────────────────┘
