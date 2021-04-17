select 
round(field1,0) as 花萼長度,
count(*) as amount
from iris
group by round(field1,0)
order by round(field1,0) desc
