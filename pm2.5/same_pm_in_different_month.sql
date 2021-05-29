with data1 as (
select 
dt as dt_aug,
cast(pm as INT)  as pm_aug
from "pm2.5" 
WHERE dt BETWEEN '2010-08-01' and '2010-08-32'
),

data2 as (
select 
dt as dt_jan,
cast(pm as INT) as pm_jan
from "pm2.5" 
WHERE dt BETWEEN '2010-01-01' and '2010-01-32'
),

data3 as (
select distinct 
dt_aug,
 pm_aug
from data1 INNER JOIN data2 on data2.pm_jan = data1.pm_aug
)
select 
pm_aug,
count(*) as amt
from data3
group by pm_aug
order by amt DESC