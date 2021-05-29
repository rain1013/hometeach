SELECT
 'number_people ' as name,
  max(field3) as max_num_people,
  min(field3) as min_num_people,
  avg(field3) as avg_num_people
 FROM car_evaluation
 
 UNION ALL
 
 SELECT
  'number_doors ' as name,
  max(field4) as max_num_doors,
  min(field4) as min_num_doors,
  avg(field4) as avg_num_doors
 FROM car_evaluation