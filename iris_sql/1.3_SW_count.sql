select 
field2 as  花萼寬度,
count(*) as amount
from iris
GROUP BY field2
ORDER BY count(*) DESC