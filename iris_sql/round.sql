SELECT 
	field5,
	round(field2,0) as round_sepal_width,
	round(avg(field1),2) as avg_sepal_length
	FROM iris
	GROUP BY field5, round(field2,0)

