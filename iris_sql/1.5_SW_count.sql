select 
field4 as  花辦寬度,
count(*) as amount
from iris
GROUP BY field4
ORDER BY count(*) DESC