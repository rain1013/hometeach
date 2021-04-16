select 
field1 as  花長寬度,
count(*) as amount
from iris
GROUP BY field1
ORDER BY count(*) DESC