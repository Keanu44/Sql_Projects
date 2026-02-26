SELECT 
    race,
    COUNT(*) AS total_patients,
    ROUND(
        SUM(CASE WHEN status = 'Dead' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS mortality_rate_percentage
FROM breast_cancer_clean
GROUP BY race
ORDER BY mortality_rate_percentage DESC;

┌─────────┬────────────────┬───────────────────────────┐
│  race   │ total_patients │ mortality_rate_percentage │
│ varchar │     int64      │          double           │
├─────────┼────────────────┼───────────────────────────┤
│ Black   │            291 │                     25.09 │
│ White   │           3413 │                     14.94 │
│ Other   │            320 │                     10.31 │
└─────────┴────────────────┴───────────────────────────┘
