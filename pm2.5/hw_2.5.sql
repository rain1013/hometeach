with data as (
	select
	dt,
	case 
		when pm = 'NA' then 0
		else pm
	end pm,
	avg(pm) over (rows between 3 PRECEDING and 1 PRECEDING) as avg_10pm
	from "pm2.5"
),

data2 as (
select 
	pm,
	dt,
	lag(pm,10) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag10,
	lag(pm,9 ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag9,
	lag(pm,8) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag8,
	lag(pm,7 ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag7,
	lag(pm,6 ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag6,
	lag(pm,5 ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag5,
	lag(pm,4 ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag4,
	lag(pm,3 ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag3,
	lag(pm,2 ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag2,
	lag(pm,1) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag1,
	avg_10pm
from data
),
data3 as (
select
	dt,
	pm,
	avg_10pm,
	lag10,
	lag9,
	lag8,
	lag7,
	lag6,
	lag5,
	lag4,
	lag3,
	lag2,
	lag1,
	(coalesce(lag3,0)-avg_10pm)*(coalesce(lag3,0)-avg_10pm) as lag_3_print,
	 ( coalesce(lag2,0)-avg_10pm)*(coalesce(lag2,0)-avg_10pm) as lag_2_print,
	 (coalesce(lag1,0)-avg_10pm)*(coalesce(lag1,0)-avg_10pm) as lag_1_print,
-- 	((lag10-avg_10pm)*(lag10-avg_10pm)+(lag9-avg_10pm)*(lag9-avg_10pm)+(lag8-avg_10pm)*(lag8-avg_10pm)+(lag7-avg_10pm)*(lag7-avg_10pm)
-- 	+(lag6-avg_10pm)*(lag6-avg_10pm)+(lag5-avg_10pm)*(lag5-avg_10pm)+(lag4-avg_10pm)*(lag4-avg_10pm)+
	((coalesce(lag3,0)-avg_10pm)*(coalesce(lag3,0)-avg_10pm)+ ( coalesce(lag2,0)-avg_10pm)*(coalesce(lag2,0)-avg_10pm)+ (coalesce(lag1,0)-avg_10pm)*(coalesce(lag1,0)-avg_10pm))/3 as var_lag 
from data2
)
--
--
select 
	dt,
	pm,
	lag10,
	lag9,
	lag8,
	lag7,
	lag6,
	lag5,
	lag4,
	lag3,
	lag2,
	lag1,
	lag_1_print,
	lag_2_print,
	lag_3_print,
	avg_10pm,
	var_lag,
	case 
		when pm > var_lag then 'abnormal'
		else 'normal'
	end status
from data3


