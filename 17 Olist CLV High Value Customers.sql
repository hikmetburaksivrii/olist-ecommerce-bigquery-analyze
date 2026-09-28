--Top 10 High-Value Customers!
SELECT
  customer_unique_id,
  --total_orders,
  observed_clv,
  avg_order_value_per_customer,
  first_order_date,
  last_order_date
FROM `olist0626-180626-p6.Olist.olist_customer_clv`
ORDER BY observed_clv DESC
LIMIT 10;