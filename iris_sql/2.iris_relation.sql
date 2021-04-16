SELECT 
field5 as name,
min(field1) as  'min 花萼長度',
max(field1) as  'max 花萼長度',
round(avg(field1),2) as  'avg花萼長度',
min(field2) as  'min 花萼寬度',
max(field2) as  'max 花萼寬度',
round(avg(field2),2) as  'avg 花萼寬度',
min(field3) as  'min 花瓣長度',
max(field3) as  'max 花瓣長度',
round(avg(field3),2) as  'avg 花瓣長度',
min(field4) as  'min 花瓣寬度',
max(field4) as  'max花瓣寬度',
round(avg(field4),2) as  'avg 花瓣寬度'
from iris
group by field5