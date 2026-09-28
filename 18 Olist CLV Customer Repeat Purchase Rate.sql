--Customers Who Made Single Or Repeat Purchases!
SELECT
  COUNTIF(total_orders = 1) AS one_time_customers,
  COUNTIF(total_orders > 1) AS repeat_customers,
  COUNT(*) AS total_customers
FROM `olist0626-180626-p6.Olist.olist_customer_clv`;

--Repeat Purchase Rate!
SELECT
  COUNTIF(total_orders > 1) AS repeat_customers,
  COUNT(*) AS total_customers,
--Ratio Of Repeat Customers To Total Customers!
  ROUND(COUNTIF(total_orders > 1) / COUNT(*) * 100,2) AS repeat_purchase_rate
FROM `olist0626-180626-p6.Olist.olist_customer_clv`;