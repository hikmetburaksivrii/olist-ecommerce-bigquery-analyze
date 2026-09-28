/*The query results must be saved as a table. The query needs to be 
executed and saved as the 'Olist Customer Order Fact' table.*/

SELECT
  o.order_id,
  o.customer_id,
  c.customer_unique_id,
  c.customer_city,
  c.customer_state,
  o.order_status,
  o.order_purchase_date,
  o.order_approved_date,
  o.order_delivered_date,
  o.approval_days,
  o.delivery_days,
  p.order_revenue,
  p.payment_count,
  p.max_payment_installments,
  r.avg_review_score,
  r.review_count
  
FROM `olist0626-180626-p6.Olist.olist_orders_clean` o
INNER JOIN `olist0626-180626-p6.Olist.olist_customers_clean` c
  ON o.customer_id = c.customer_id
INNER JOIN `olist0626-180626-p6.Olist.olist_order_payments_clean` p
  ON o.order_id = p.order_id
LEFT JOIN `olist0626-180626-p6.Olist.olist_order_reviews_clean` r
  ON o.order_id = r.order_id
WHERE o.order_status = 'delivered';