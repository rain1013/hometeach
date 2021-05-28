with data1 as (
select 
1 as ID,
count(field2) as game_url_amt
from URL_Classification
where field3 = 'Games' and 
field2 REGEXP '(?<=)(game)+'
),

data2 as (
	select
		1 as ID,
		count(field2) as total_amt,
		field3
	from URL_Classification
	where field3  = 'Games'
)

select 
game_url_amt,
total_amt,
cast(game_url_amt as float)/cast(total_amt as float) as game_ratio
from data2
join data1 on data1.ID = data2.ID