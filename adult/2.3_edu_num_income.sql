select 
'0-5年教育' as name,
count(field5) as avg_edu_num,
field15 as income
from adult
where field5 
BETWEEN 0 and 5
group by field15
union all
select 
'6-10年教育' as name,
count(field5) as avg_edu_num,
field15 as income
from adult
where field5 
BETWEEN 6 and 10
group by field15
union all
select 
'10年以上教育' as name,
count(field5) as avg_edu_num,
field15 as income
from adult
where field5 >10
group by field15
