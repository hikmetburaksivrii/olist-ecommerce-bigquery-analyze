--AOV: AVAREGE ORDER VALUE!
SELECT
  ROUND(SUM(order_revenue), 2) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(order_revenue) / COUNT(DISTINCT order_id), 2) AS aov
FROM `olist0626-180626-p6.Olist.olist_customer_order_fact`;