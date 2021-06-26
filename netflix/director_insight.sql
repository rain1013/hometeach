-- Network analysis of Actors / Directors and find interesting insights
select
director,
country,
count(*) as amt
from netflix_titles
where director is not null
GROUP by director
order by amt DESC