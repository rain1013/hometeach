with data as (
	select
	pm,
	dt,
	avg(pm) over (rows between 10 PRECEDING and 1 PRECEDING) as avg_10pm
	from "pm2.5"
),

data2 as (
select 
	pm,
	dt,
	lag(pm,10,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag10,
	lag(pm,9 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag9,
	lag(pm,8,'NA' ) over (rows  between 10 PRECEDING and 1 PRECEDING) as lag8,
	lag(pm,7 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag7,
	lag(pm,6 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag6,
	lag(pm,5 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag5,
	lag(pm,4 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag4,
	lag(pm,3 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag3,
	lag(pm,2 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag2,
	lag(pm,1 ,'NA') over (rows  between 10 PRECEDING and 1 PRECEDING) as lag1,
	avg_10pm
from data
),
data3 as (
select
	dt,
	pm,
	avg_10pm,
	((lag10-avg_10pm)*(lag10-avg_10pm)+(lag9-avg_10pm)*(lag9-avg_10pm)+(lag8-avg_10pm)*(lag8-avg_10pm)+
	(lag7-avg_10pm)*(lag7-avg_10pm)+(lag6-avg_10pm)*(lag6-avg_10pm)+(lag5-avg_10pm)*(lag5-avg_10pm)+(lag4-avg_10pm)*(lag4-avg_10pm)+
	(lag3-avg_10pm)*(lag3-avg_10pm)+(lag2-avg_10pm)*(lag2-avg_10pm)+(lag1-avg_10pm)*(lag1-avg_10pm))/10 as var_lag
from data2
)

select 
	dt,
	pm,
	avg_10pm,
	var_lag,
	case 
		when pm > var_lag then 'abnormal'
		else 'normal'
	end status
from data3
