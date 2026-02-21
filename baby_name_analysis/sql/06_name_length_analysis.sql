SELECT Name,
       LENGTH(Name) AS name_length,
       SUM(Births) AS popularity
FROM names_clean
GROUP BY Name
ORDER BY name_length;

┌─────────────┬─────────────┬──────────────┐
│    Name     │ num_genders │ total_births │
│   varchar   │    int64    │    int128    │
├─────────────┼─────────────┼──────────────┤
│ Michael     │           2 │      1382856 │
│ Christopher │           2 │      1122213 │
│ Matthew     │           2 │      1034494 │
│ Joshua      │           2 │       960170 │
│ Jessica     │           2 │       865046 │
│ Daniel      │           2 │       824208 │
│ David       │           2 │       819479 │
│ Ashley      │           2 │       792865 │
│ James       │           2 │       766789 │
│ Andrew      │           2 │       761824 │
├─────────────┴─────────────┴──────────────┤
│ 10 rows                        3 columns │
└──────────────────────────────────────────┘
