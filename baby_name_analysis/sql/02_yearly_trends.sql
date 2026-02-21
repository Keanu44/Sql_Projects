--Tracks how Popularity chnged by the year
WITH girl_name AS (
    SELECT Year, Name, SUM(Births) AS num_babies
    FROM names_clean
    WHERE Gender = 'F'
    GROUP BY Year, Name
)
SELECT Year, Name,
    ROW_NUMBER() OVER (PARTITION BY Year ORDER BY num_babies DESC) AS rank
FROM girl_name
limit 20;

┌───────┬───────────┬───────┐
│ Year  │   Name    │ rank  │
│ int64 │  varchar  │ int64 │
├───────┼───────────┼───────┤
│  1992 │ Alesia    │  2049 │
│  1992 │ Kayci     │  2050 │
│  1992 │ Yecenia   │  2051 │
│  1992 │ Raylene   │  2052 │
│  1992 │ Rosaura   │  2053 │
│  1992 │ Nandi     │  2054 │
│  1992 │ Bryn      │  2055 │
│  1992 │ Cintia    │  2056 │
│  1992 │ Janiece   │  2057 │
│  1992 │ Donisha   │  2058 │
│  1992 │ Bonita    │  2059 │
│  1992 │ Joseph    │  2060 │
│  1992 │ Noemy     │  2061 │
│  1992 │ Gitty     │  2062 │
│  1992 │ Lizbet    │  2063 │
│  1992 │ Madelaine │  2064 │
│  1992 │ Lanie     │  2065 │
│  1992 │ Indigo    │  2066 │
│  1992 │ Jaci      │  2067 │
│  1992 │ Evette    │  2068 │
├───────┴───────────┴───────┤
│ 20 rows         3 columns │
└───────────────────────────┘