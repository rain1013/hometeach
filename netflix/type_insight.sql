--Is Netflix has increasingly focusing on TV rather than movies in recent years.
select 
type,
release_year,
count(cast (type as TEXT) )as type
from netflix_titles
where release_year = 2021
GROUP by type 
order by release_year DESC
