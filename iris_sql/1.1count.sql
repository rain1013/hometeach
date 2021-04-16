SELECT  
DISTINCT field5,
count(*) as amount
from iris  Group by field5
order by count(*) DESC