SELECT avg(field1) as '花萼avg長度' ,avg(field2)as '花萼avg寬度' ,avg(field3) as '花瓣avg長度' ,avg(field4) as '花瓣avg寬度' ,
max(field1) as '花萼長度最大值',max(field2) '花萼寬度最大值',max(field3) '花辦長度最大值',max(field4) '花辦寬度最大值',
min(field1) as '花萼長度最小值',min(field2) '花萼寬度最小值',min(field3) '花辦長度最小值',min(field4) '花辦寬度最小值'
count(field1)
from iris_data
group by field5
order by field5