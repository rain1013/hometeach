SELECT
'0-20歲' as name,
avg(field11) as avg_capital_gain,
max(field11) as max_capital_gain,
min(field11) as min_capital_gain,
avg(field12) as avg_capital_loss,
max(field12) as max_capital_loss,
min(field12) as min_capital_loss
from adult
where field1 
between 0 and 20

union ALL
SELECT
'20-40歲' as name,
avg(field11) as avg_capital_gain,
max(field11) as max_capital_gain,
min(field11) as min_capital_gain,
avg(field12) as avg_capital_loss,
max(field12) as max_capital_loss,
min(field12) as min_capital_loss
from adult
where field1 
between 20 and 40

union ALL
SELECT
'40-60歲' as name,
avg(field11) as avg_capital_gain,
max(field11) as max_capital_gain,
min(field11) as min_capital_gain,
avg(field12) as avg_capital_loss,
max(field12) as max_capital_loss,
min(field12) as min_capital_loss
from adult
where field1 
between 40 and 60

union ALL
SELECT
'60歲以上' as name,
avg(field11) as avg_capital_gain,
max(field11) as max_capital_gain,
min(field11) as min_capital_gain,
avg(field12) as avg_capital_loss,
max(field12) as max_capital_loss,
min(field12) as min_capital_loss
from adult
where field1 
between 60 and 99

