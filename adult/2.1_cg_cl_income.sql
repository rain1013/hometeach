SELECT
	field15 as name,
	avg(field11) as avg_capital_gain,
	max(field11) as max_capital_gain,
	min(field11) as min_capital_gain,
	avg(field12) as avg_capital_loss,
	max(field12) as max_capital_loss,
	min(field12) as min_capital_loss
from adult
where field15 IS NOT NULL
group by field15 
