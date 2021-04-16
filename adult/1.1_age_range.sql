SELECT
cast (field1/20 as INT)*20  as 年齡分佈,
count(*) as amt
from adult
where field1
GROUP by cast (field1/20 as INT)*20
order by field1 ASC