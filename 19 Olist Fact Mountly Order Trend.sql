--Monthly Order Count Trend!
-- DATE TRUNC: Truncates the date to the specified level and returns a DATE-TIMESTAMP value.
-- EXTRACT: Extracts a specific part from the date and returns a NUMERIC value (INTEGER).
SELECT
  DATE_TRUNC(order_purchase_date, MONTH) AS order_month,
  COUNT(DISTINCT order_id) AS total_orders
FROM `olist0626-180626-p6.Olist.olist_customer_order_fact`
GROUP BY order_month
ORDER BY order_month;

SELECT
  EXTRACT(YEAR FROM order_purchase_date) AS order_year,
  EXTRACT(MONTH FROM order_purchase_date) AS order_month,
  COUNT(DISTINCT order_id) AS total_orders
FROM `olist0626-180626-p6.Olist.olist_customer_order_fact`
GROUP BY order_year, order_month
ORDER BY order_year, order_month;