/*Once the query is executed, the results should be saved as a table 
to generate the 'Olist Order Payments Clean' table. This is a prerequisite 
for building the 'Order Fact' table.*/

SELECT
  order_id,
  ROUND(SUM(payment_value), 2) AS order_revenue,
  COUNT(*) AS payment_count,
  MAX(payment_installments) AS max_payment_installments
FROM `olist0626-180626-p6.Olist.olist_order_payments`
GROUP BY order_id;