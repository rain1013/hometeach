with preprocess as (
	select 
		1 as ID,
		14.42 as std_DEWP,
		avg(field7) as avg_DEWP
	from PRSA_data_2010
),

preprocess2 as (
	select 
		1 as ID,
		field7 as DEWP
	from PRSA_data_2010
)

select 
	DEWP,
	(DEWP-avg_DEWP)/std_DEWP as cal_value,
	case 
		when (DEWP-avg_DEWP)/std_DEWP>=3 then 'H_outlier'
		when  (DEWP-avg_DEWP)/std_DEWP<=-3 then'L_outlier'
		else 'normal'
	end result
from preprocess
join preprocess2 on preprocess.ID = preprocess2.ID
order by result ASC
