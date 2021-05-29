with avg1 as (	
	select 
		1 as ID,
		count(*) as amount,
		avg(field7) as avg_DEWP
	from PRSA_data_2010
),
count1 as(
	select 
		1 as ID,
		field7 as DEWP
	from PRSA_data_2010
),

cal_temp as (
	select 
		(DEWP - avg_DEWP)*(DEWP - avg_DEWP) as  pow,
		amount
	from avg1 join count1 on count1.ID = avg1.ID
)
select 
	sum(pow)/amount as variance
from cal_temp
