select 
round(field3,0) as  花辦長度,
count(*) as amount
from iris
GROUP BY round(field3,0)
ORDER by round(field3,0) DESC