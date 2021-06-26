-- Network analysis of Actors / Directors and find interesting insights
select
"cast",
country,
count(*) as amt
from netflix_titles
where "cast" is not null
GROUP by "cast"
order by amt DESC