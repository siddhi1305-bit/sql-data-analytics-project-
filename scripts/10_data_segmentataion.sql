/*
===============================================================================
Data Segmentation Analysis
===============================================================================
Purpose:
    - To group data into meaningful categories for targeted insights.
    - For customer segmentation, product categorization, or regional analysis.
=============================================================================
*/

/*Segment products into cost ranges and 
count how many products fall into each segment*/

WITH product_sagement as 
(
SELECT 
product_key,
product_name,
cost,
  CASE 
  WHEN cost<100 THEN 'Below 100'
  WHEN cost BETWEEN 100 AND 500 THEN '100-500'
  WHEN COST BETWEEN 500 AND 1000 THEN '500-1000'
  ELSE 'ABOVE 1000'
  END AS cost_range 
FROM gold.dim_products
)

SELECT 
  cost_range,
  COUNT( product_key) as total_product
  FROM product_sagement
  GROUP BY cost_range
  order by total_product DESC
