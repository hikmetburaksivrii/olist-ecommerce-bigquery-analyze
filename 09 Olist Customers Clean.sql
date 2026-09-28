/*Once the query is executed, the results should be saved as a table 
to generate the 'Olist Customers Clean' table. This is a prerequisite 
for building the 'Order Fact' table.*/

SELECT
  customer_id,
  customer_unique_id,
  customer_zip_code_prefix,
  LOWER(TRIM(customer_city)) AS customer_city,
  UPPER(TRIM(customer_state)) AS customer_state
FROM `olist0626-180626-p6.Olist.olist_customers`
WHERE customer_id IS NOT NULL
  AND customer_unique_id IS NOT NULL;