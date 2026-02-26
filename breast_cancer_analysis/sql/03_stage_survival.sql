SELECT 
    _6th_stage,
    survival_months,
    ROUND(
        AVG(survival_months) OVER (PARTITION BY _6th_stage),
        2
    ) AS stage_avg_survival,
    ROUND(
        survival_months - AVG(survival_months) OVER (PARTITION BY _6th_stage),
        2
    ) AS difference_from_stage_average
FROM breast_cancer_clean
ORDER BY _6th_stage, survival_months DESC
limit 20;

┌────────────┬─────────────────┬────────────────────┬───────────────────────────────┐
│ _6th_stage │ survival_months │ stage_avg_survival │ difference_from_stage_average │
│  varchar   │      int32      │       double       │            double             │
├────────────┼─────────────────┼────────────────────┼───────────────────────────────┤
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             107 │              74.41 │                         32.59 │
│ IIA        │             106 │              74.41 │                         31.59 │
├────────────┴─────────────────┴────────────────────┴───────────────────────────────┤
│ 20 rows                                                                 4 columns │
└───────────────────────────────────────────────────────────────────────────────────┘