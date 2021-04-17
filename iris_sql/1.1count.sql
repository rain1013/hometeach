SELECT  
DISTINCT field5,
count(*) as amount
from iris  Group by field5ggig
order by count(*) DESC
