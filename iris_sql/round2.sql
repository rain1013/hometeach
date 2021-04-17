SELECT 
   'Sepal_length' as name,
   round(field1,0) as round_Sepal_length,
   count(*) as amount
FROM iris
GROUP BY round(field1,0)