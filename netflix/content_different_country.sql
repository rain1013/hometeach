----Understanding what content is available in different countries
select 
listed_in,
country
from netflix_titles
GROUP by country