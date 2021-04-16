select 
field3 as  花辦長度,
count(*) as amount
from iris
GROUP BY field3
ORDER BY count(*) DESC