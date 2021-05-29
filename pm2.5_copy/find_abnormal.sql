--找出每個月pm2.5出現異常的次數（使用三倍標準差去找出outlier）
with preprocess1 as (
	select 
		 1 as ID,
		dt,
		pm
	from "pm2.5"
),

preprocess2 as (
	select 
		1 as ID,
		avg(pm) as avg_pm
	from preprocess1
),

preprocess3 as (
	select 
			dt,
			pm,
			(pm-avg_pm)/92.25 as cal_value,
			case 
				when (pm-avg_pm)/92.25 >=3 then 'H_outlier'
				when  (pm-avg_pm)/92.25 <=-3 then'L_outlier'
				else 'normal'
			end result
	from preprocess2 
join preprocess1 on preprocess2.ID = preprocess1.ID
)

select 
		dt,
		avg(pm) as month_avg_pm,
		sum(case when result = 'normal' then 1 
					else 0
					end) as count_normal,
		sum(case when result = 'H_outlier' then 1
								when result = 'L_outlier' then 1 
					else 0
					end) as count_abnormal,
		count(result) as total_amt
from preprocess3
GROUP by datetime(dt,'start of month')
