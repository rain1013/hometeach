with preprocess1 as (
select 
dt,
case when pm = 'NA' then 0
else pm
end pm_adjust
from "pm2.5"
),

data1 as (
select
	dt,
	pm_adjust,
	max(cast(pm_adjust as INT)) over (ROWs  between  UNBOUNDED PRECEDING and CURRENT row) as max_pm
from preprocess1
),
data2 as (
select 
	dt,
	pm_adjust,
	max_pm,
	dense_rank ( ) over (order by max_pm )as rank_amt
from data1
)
select
	dt,
	max_pm,
	count(max_pm) as amt
from data2 
group by rank_amt
