~~~ SQL
/*Median medical Charges by each Region*/

SELECT distinct region, median_value AS Median
FROM (
  SELECT distinct region,
         charges AS median_value,
         ROW_NUMBER() OVER (PARTITION BY region ORDER BY charges) AS row_num,
         COUNT(*) OVER (PARTITION BY region) AS total_rows
  FROM cs2_personalmedicalcost.medical_data_dataset
) AS subquery
WHERE row_num IN (FLOOR((total_rows+1)/2), FLOOR((total_rows+2)/2));

~~~

**Result**
|Region|Region_Median|
|---|---|
|northeast|10058|
|northwest|8966|
|southeast|8871|

~~~ SQL 
/*Averages medical Charges by each Region*/

SELECT distinct region, avg(charges) 
FROM cs2_personalmedicalcost.medical_data_dataset
group by region
order by 2
~~~

**Result**
|Region|Region_Median|
|---|---|
|northwest|12417|
|northeast|13406|
|southeast|14483|


~~~ SQL 
/*Average medical Charges by Gender */
SELECT distinct sex, avg(charges) 
FROM cs2_personalmedicalcost.medical_data_dataset
group by sex
order by 2 desc 
~~~

|Sex|avg(charges)|
|---|---|
|male|13968|
|female|12945|

~~~ SQL 
/*Male and Female Median Charges*/
SELECT 
  DISTINCT Sex,
  ROUND(PERCENTILE_CONT(charges, 0.50) OVER (PARTITION BY Sex),2) AS Sex_Median
FROM `single-being-353600.Medical_Insurance_Data.Insurance_Data`;
~~~

**Result**

|Sex|Sex_Median|
|---|---|
|male|9369.62|
|female|9412.96|

~~~ SQL 
/*Children and Charge Correlation*/
SELECT
    (COUNT(*) * SUM(children * charges) - SUM(children) * SUM(charges)) /
    (SQRT(COUNT(*) * SUM(children * children) - SUM(children) * SUM(children)) *
    SQRT(COUNT(*) * SUM(charges * charges) - SUM(charges) * SUM(charges))) AS correlation
FROM
    medical_data_dataset;
~~~

**Result**
|CORR_CO_Charges|
|---|
|0.08|

~~~ SQL 
/*Age and Charge Correlation*/
SELECT
    (COUNT(*) * SUM(age * charges) - SUM(age) * SUM(charges)) /
    (SQRT(COUNT(*) * SUM(age * age) - SUM(age) * SUM(age)) *
    SQRT(COUNT(*) * SUM(charges * charges) - SUM(charges) * SUM(charges))) AS correlation
FROM
    medical_data_dataset;
~~~

**Result**
|CORR_CO_Charges|
|---|
|0.30|

~~~ SQL 
/*BMI Categories*/
with cte as
(SELECT *, 
 case WHEN bmi < 18.5 THEN 'Underweight'
  WHEN bmi >= 18.5 AND bmi < 25 THEN 'Normal'
  WHEN bmi >= 25 AND bmi < 30 THEN 'Overweight'
  WHEN bmi >= 30 THEN 'Obese' else 0 end as BMI_Category 
 FROM cs2_personalmedicalcost.medical_data_dataset)

select BMI_Category, avg(charges) as avg_charges
from cte
group by BMI_Category 
order by 2 
~~~

**Result**

|BMI_Category|Avg_Cost|
|---|---|
|Underweight|9041|
|Normal|10649|
|Overweight|11163|
|Obese|15496|

~~~ SQL 
/*Smoker and Non-smoker Average Charges*/
select smoker, avg(charges)
from cs2_personalmedicalcost.medical_data_dataset
group by 1
~~~

**Result**
|smoker|avg(charges)|
|---|---|
|false|8506|
|true|31885|
