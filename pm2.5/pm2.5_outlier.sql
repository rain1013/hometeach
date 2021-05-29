with preprocess as (
	select 
		1 as ID,
		92.25 as std_PM,
		avg(field6) as avg_PM
	from PRSA_data_2010
),

preprocess2 as (
	select 
		1 as ID,
		field6 as pm
	from PRSA_data_2010
),

prepross3 as (
	select
			field6, 
			field2,
		case
			when length(field3) ==1 then '0'||field3
		else field3
		end month_clean,
		case
			when length(field4) ==1 then '0'||field4
		ELSE field4
		end day_clean,
		case 
			when length(field5) ==1 then '0'||field5
		else field5
		end hour_clean
	from PRSA_data_2010
),

clean_data as (
	SELECT
		1 as ID,
		field6,
		datetime(field2||'-'|| month_clean||'-'||day_clean||' '||hour_clean||':00:00') as dt
	from prepross3
),

date_process as (
	select 
		1 as ID,
		datetime(dt, 'start of month') as dt_pm
	from clean_data
	group by datetime(dt, 'start of month')
),

outlier as (
	select
	    1 as ID,
		PM,
		(PM-avg_PM)/std_PM as cal_value,
		case 
			when (PM-avg_PM)/std_PM>=3 then 'H_outlier'
			when  (PM-avg_PM)/std_PM<=-3 then'L_outlier'
			else 'normal'
		end result
	from preprocess
	join preprocess2 on preprocess.ID = preprocess2.ID
	order by result ASC
)

select 
	dt,
	PM,
	cal_value,
	result
from outlier join clean_data on outlier.ID = clean_data.ID
