with data1 as (
	select 
		1 as ID,
		count(field2) as angel_url_amt,
		field3,
		field1
	from URL_Classification
	where field2 REGEXP '(.co.uk)' and field3 = 'Arts'
),

data2 as (
	select
		1 as ID,
		count(field2) as total_amt,
		field3
	from URL_Classification
	where field3  = 'Arts'
)

select 
angel_url_amt,
total_amt,
cast(angel_url_amt as float)/cast(total_amt as float) as angel_ratio
from data2
join data1 on data1.ID = data2.ID

