select 
round(field2,0) as  花萼寬度,
count(*) as amount
from iris
GROUP BY round(field2,0)
ORDER by round(field2,0) DESC