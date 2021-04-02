SELECT 
round(avg(field1),1) as avg_age,
min(field1) as min_age,
max(field1) as max_age,
field7 as occupation,
field15 as income
from adult
where field15 = ">50K"
group by field7
order by avg(field1) ASC