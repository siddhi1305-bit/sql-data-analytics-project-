/*
Dimension exploration 
Purpose:
    - To explore the structure of dimension tables 
=============================================================== 
*/
-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT 
Country
FROM gold.dim_customers ;

-- Retrieve a list of unique categories, subcategories, and products

SELECT DISTINCT 
category,
subcategory,
product_name
FROM gold.dim_products 
order by 
CATEGORY,
SUBCATEGORY,
 product_name ;
