---5年中，每年 pm2.5 維持最大且最久的那天，該pm2.5值與總體的佔比。
with preprocess1 as (
select 
	dt,
	case when pm = 'NA' then 0
	else pm
	end pm_adjusted
from "pm2.5"
),

data1 as (
select
	dt,
	pm_adjusted,
	max(cast(pm_adjusted as INT)) over ( PARTITION by datetime(dt,'Start of year')  ROWs  between  UNBOUNDED PRECEDING and CURRENT row) as max_pm
from preprocess1
),

data2 as (
select 
	dt,
	pm_adjusted,
	max_pm,
	dense_rank ( ) over (order by max_pm )as rank_amt
from data1
order by dt ASC
),

data3 as (
select
	1 as ID,
	dt,
	max_pm,
	count(max_pm) as max_amt
from data2 
group by rank_amt
),

data4 as (
select 
	1 as ID,
	count(pm_adjusted) as total_amt
from data1
)

select 
	dt,
	max_pm,
	max_amt,
	total_amt,
	max_amt/cast (total_amt as double ) as ratio
from data3 join data4 on data3.ID = data4.ID
order by dt ASC
