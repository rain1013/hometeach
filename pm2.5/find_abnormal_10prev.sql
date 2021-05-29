with preprocess as (
	select 
		dt,
		pm,
		avg(pm) over (ROWS BETWEEN 10 PRECEDING and CURRENT ROW) as ten_avg_value
	from "pm2.5"
)
select 
pm,
dt,
ten_avg_value,
	case 
		WHEN cast(pm as int) > ten_avg_value then  'abnormal'
		else 'normal'
	END
from preprocess