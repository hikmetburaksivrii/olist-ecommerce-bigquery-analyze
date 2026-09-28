--Observed CLV: Customer Life Time Value!
--Saved As A Table For Calculations!
--The Column Containing The Real Customer Identity Is Customer Unique ID!

/*To run the CLV queries, the 'Olist Customer CLV' table must be created. 
This query needs to be executed and saved as 'Olist Customer CLV*/

SELECT
  customer_unique_id,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(order_revenue), 2) AS observed_clv,
  --Sipariş başına ortalama harcama!
  ROUND(AVG(order_revenue), 2) AS avg_order_value_per_customer,
  MIN(order_purchase_date) AS first_order_date,
  MAX(order_purchase_date) AS last_order_date
FROM `olist0626-180626-p6.Olist.olist_customer_order_fact`
GROUP BY customer_unique_id
ORDER BY observed_clv DESC;