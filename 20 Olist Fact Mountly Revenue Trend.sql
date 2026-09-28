--Monthly Revenue Trend!
SELECT
  DATE_TRUNC(order_purchase_date, MONTH) AS order_month,
  ROUND(SUM(order_revenue), 2) AS total_revenue
FROM `olist0626-180626-p6.Olist.olist_customer_order_fact`
GROUP BY order_month
ORDER BY order_month;