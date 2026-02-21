WITH babies_by_decade AS (
SELECT
    CASE
        WHEN Year BETWEEN 1980 AND 1989 THEN 'Eighties'
        WHEN Year BETWEEN 1990 AND 1999 THEN 'Nineties'
        WHEN Year BETWEEN 2000 AND 2009 THEN 'Two_Thousands'
    END AS decade,
    Gender,
    Name,
    SUM(Births) AS num_babies
FROM names_clean
GROUP BY decade, Gender, Name
)
SELECT *,
ROW_NUMBER() OVER (PARTITION BY decade, Gender ORDER BY num_babies DESC) AS popularity
FROM babies_by_decade
limit 20;

┌───────────────┬─────────┬────────────┬────────────┬────────────┐
│    decade     │ Gender  │    Name    │ num_babies │ popularity │
│    varchar    │ varchar │  varchar   │   int128   │   int64    │
├───────────────┼─────────┼────────────┼────────────┼────────────┤
│ Two_Thousands │ F       │ Gwendolynn │          5 │      10241 │
│ Two_Thousands │ F       │ Jolissa    │          5 │      10242 │
│ Two_Thousands │ F       │ Malaak     │          5 │      10243 │
│ Two_Thousands │ F       │ Nathalye   │          5 │      10244 │
│ Two_Thousands │ F       │ Noga       │          5 │      10245 │
│ Two_Thousands │ F       │ Yumiko     │          5 │      10246 │
│ Two_Thousands │ F       │ Raechelle  │          5 │      10247 │
│ Two_Thousands │ F       │ Milinda    │          5 │      10248 │
│ Two_Thousands │ F       │ Zitlally   │          5 │      10249 │
│ Two_Thousands │ F       │ Eliah      │          5 │      10250 │
│ Two_Thousands │ F       │ Leira      │          5 │      10251 │
│ Two_Thousands │ F       │ Layana     │          5 │      10252 │
│ Two_Thousands │ F       │ Meklit     │          5 │      10253 │
│ Two_Thousands │ F       │ Sadye      │          5 │      10254 │
│ Two_Thousands │ F       │ Jocilyn    │          5 │      10255 │
│ Two_Thousands │ F       │ Leeasia    │          5 │      10256 │
│ Two_Thousands │ F       │ Nataliah   │          5 │      10257 │
│ Two_Thousands │ F       │ Dannielynn │          5 │      10258 │
│ Two_Thousands │ F       │ Gabbie     │          5 │      10259 │
│ Two_Thousands │ F       │ Meylin     │          5 │      10260 │
├───────────────┴─────────┴────────────┴────────────┴────────────┤
│ 20 rows                                              5 columns │
└────────────────────────────────────────────────────────────────┘