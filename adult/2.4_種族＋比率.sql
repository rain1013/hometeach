WITH total_amount AS (
 SELECT
  1 AS ID,
  count(field9) AS all_amount
 FROM adult
 WHERE field9 IS NOT NULL
),

race AS (
 SELECT
  1 AS ID,
  field9,
  count(*) AS race_amount
 FROM adult
 WHERE field9 IS NOT NULL
 GROUP BY field9
)

SELECT 
 field9,
 race_amount,
 CAST(all_amount AS DOUBLE)  AS all_amount,
 race_amount / CAST(all_amount AS DOUBLE) AS ratio
FROM race
JOIN total_amount ON total_amount.ID = race.ID