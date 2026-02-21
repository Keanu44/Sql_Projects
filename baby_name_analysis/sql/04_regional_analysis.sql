WITH clean_regions AS (
    SELECT State,
           CASE WHEN Region = 'New England' THEN 'New_England'
                ELSE Region END AS clean_region
    FROM regions_clean rc
)
SELECT clean_region, SUM(Births) AS num_babies
FROM names_clean nc
LEFT JOIN clean_regions rc ON nc.State = rc.State
GROUP BY clean_region
limit 10;

┌──────────────┬────────────┐
│ clean_region │ num_babies │
│   varchar    │   int128   │
├──────────────┼────────────┤
│ Mountain     │    6282217 │
│ NULL         │    3431049 │
│ Mid_Atlantic │   13742667 │
│ New_England  │    4269213 │
│ South        │   34219920 │
│ Midwest      │   19245081 │
│ Pacific      │   17540716 │
└──────────────┴────────────┘