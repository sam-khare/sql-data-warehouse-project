-- Check for Nulls or duplicates in primary Key
--Expectation : No result

SELECT 
cst_id, count(*) 
FROM bronze.crm_cust_info
GROUP BY cst_id
having count(*)>1 or cst_id is null
;

-------Check for unwanted spaces

Select cst_firstname
from bronze.crm_cust_info
WHere cst_firstname != TRIM(cst_firstname);

----Data standardization and consistency

Select cst_marital_status
from bronze.crm_cust_info


----------

SELECT * From silver.crm_sales_details