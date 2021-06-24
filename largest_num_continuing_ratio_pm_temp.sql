---5年中， pm2.5 維持最大且最久的那天，該pm2.5值與總體的佔比。
with preprocess1 as (
select 
	dt,
	case when field6 = 'NA' then 0
	else field6
	end pm_adjusted,
	case when field8 = 'NA' then 0
	else field8
	end temp_adjusted
from "pm_temp"
),

data1 as (
select
	dt,
	cast(pm_adjusted as INT) as pm_adjusted,
	temp_adjusted,
	max(cast(pm_adjusted as INT)) over (PARTITION by datetime(dt,'start of year')  ROWs  between  UNBOUNDED PRECEDING and CURRENT row) as max_pm,
	max(cast(temp_adjusted as INT)) over (PARTITION by  datetime(dt,'start of year') ROWs  between  UNBOUNDED PRECEDING and CURRENT row) as max_temp
from preprocess1
),

data2 as (
select 
	dt,
	pm_adjusted ,
	max_pm,
	temp_adjusted,
	max_temp,
	dense_rank ( ) over ( order by max_pm )as rank_pm_amt,
	dense_rank ( ) over (  order by max_temp )as rank_temp_amt
from data1
order by dt ASC
),

data3 as (
select 
1 as ID,
dt,
max_pm,
max_temp,
pm_adjusted,
temp_adjusted,
count(max_pm) as count_max_pm,
count(max_temp) as count_max_temp
from data2
group by max_pm,max_temp
order by dt ASC
),

data4 as (
select 
1 as ID,
count (pm_adjusted) as total_amount
from data1
)

SELECT
dt,
max_pm,
pm_adjusted,
max_temp,
temp_adjusted,
count_max_pm/cast( total_amount as double) as ratio_pm,
count_max_temp/cast( total_amount as double) as ratio_temp
from data3 join data4 on data3.ID = data4.ID

