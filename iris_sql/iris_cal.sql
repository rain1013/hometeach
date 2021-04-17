-- 總共有三個類別,四種features，想先看每個類別的aggregation
SELECT 
field5 as name,
min(field1) as  'min length',
min(field2) as  'min length',
min(field3) as  'min length',
min(field4) as  'min length',
max(field1) as  'max length',
max(field2) as  'max length',
max(field3) as  'max length',
max(field4) as  'max length',
avg(field1) as  'avg length',
avg(field2) as  'avg length',
avg(field3) as  'avg length',
avg(field4) as  'avg length'
from iris
group by field5

