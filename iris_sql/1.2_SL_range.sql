select 
round(field1,0) as  花萼長度,
count(*) as amount
from iris
GROUP BY round(field1,0)
ORDER by round(field1,0) DESC