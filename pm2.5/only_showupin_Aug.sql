--8月有但1月沒有的pm值
with data1 as (
select 
dt as dt_jan,
cast(pm as INT) as pm_jan
from "pm2.5" 
WHERE dt BETWEEN '2010-01-01' and '2010-01-32'
),

data2 as (
select 
dt as dt_aug,
cast(pm as INT) as pm_aug
from "pm2.5" 
WHERE dt BETWEEN '2010-08-01' and '2010-08-32'
)

select 
dt_aug,
pm_aug
from data2  LEFT JOIN data1 on data2.pm_aug  = data1.pm_jan
WHERE data1.pm_jan IS NULL
