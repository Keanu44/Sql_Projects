SELECT 
    _6th_stage,
    COUNT(*) AS total_patients,
    ROUND(AVG(survival_months), 2) AS avg_survival_months
FROM breast_cancer_clean
GROUP BY _6th_stage
ORDER BY avg_survival_months DESC;

┌────────────┬────────────────┬─────────────────────┐
│ _6th_stage │ total_patients │ avg_survival_months │
│  varchar   │     int64      │       double        │
├────────────┼────────────────┼─────────────────────┤
│ IIA        │           1305 │               74.41 │
│ IIB        │           1130 │               72.22 │
│ IIIA       │           1050 │               70.19 │
│ IIIB       │             67 │               69.42 │
│ IIIC       │            472 │               63.22 │
└────────────┴────────────────┴─────────────────────┘
