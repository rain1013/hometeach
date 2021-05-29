--找出2010每個月最大的pm2.5值，透過join的方式
with data1 as (
select 
dt as date_dt,
pm
from "pm2.5"  
where dt  BETWEEN '2010-01-01' and '2010-12-32'
),
 
data2 as ( 
select 
strftime('%Y-%m',dt) as mon_dt, 
max(cast(pm as INT)) as max_pm
from "pm2.5" 
where dt BETWEEN '2010-01-01' and '2010-12-32'
GROUP by mon_dt
)

select 
date_dt,
max_pm
from data1
inner JOIN data2  on data1.pm = data2.max_pm  and data2.mon_dt = substr(data1.date_dt,1,7)
