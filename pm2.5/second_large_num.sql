--找出2010年pm2.5第二大的值
select 
	dt,
	pm,
	nth_value(pm,2) over (win) as nth
from "pm2.5"
where dt BETWEEN datetime('2010-01-01') and datetime('2010-12-31') and pm is not 'NA'
WINDOW win as (order by cast(pm as INT) DESC)
