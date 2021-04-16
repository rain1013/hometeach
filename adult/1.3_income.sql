SELECT field15 as income,
count(*) as amt
from adult
where field15 is not null
GROUP BY field15