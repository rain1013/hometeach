with prepross as (
select
field8, 
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
field8,
datetime(field2||'-'|| month_clean||'-'||day_clean||' '||hour_clean||':00:00') as dt
from prepross
)

select 
datetime(dt, 'start of month'),
avg(field8) as "TEMP"
from clean_data
group by datetime(dt, 'start of month')
