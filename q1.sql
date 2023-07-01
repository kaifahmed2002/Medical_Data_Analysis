-- region average charges
SELECT distinct region, avg(charges) 
FROM cs2_personalmedicalcost.medical_data_dataset
group by region
order by 2

-- region median charges
SELECT distinct region, median_value AS Median
FROM (
  SELECT distinct region,
         charges AS median_value,
         ROW_NUMBER() OVER (PARTITION BY region ORDER BY charges) AS row_num,
         COUNT(*) OVER (PARTITION BY region) AS total_rows
  FROM cs2_personalmedicalcost.medical_data_dataset
) AS subquery
WHERE row_num IN (FLOOR((total_rows+1)/2), FLOOR((total_rows+2)/2));