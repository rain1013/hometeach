--找出每個月最大的pm2.5值，透過window function。
with data as (
select 
pm,
dt,
datetime(dt,'start of month') as dt_month
from "pm2.5"
where dt BETWEEN '2010-01-01'  and '2010-12-32' 
),

data2 as (
select 
dt,
pm,
rank() over win as rank_
from data
window win as  (PARTITION by  dt_month order by cast(pm as INT) DESC)
)

select 
datetime(dt,'start of day'),
pm,
rank_
from data2
where rank_ = 1