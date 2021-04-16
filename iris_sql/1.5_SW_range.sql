select 
round(field4,0) as  花辦寬度,
count(*) as amount
from iris
GROUP BY round(field4,0)
ORDER by round(field4,0) DESC