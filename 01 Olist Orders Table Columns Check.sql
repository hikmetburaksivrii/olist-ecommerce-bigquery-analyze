--Null Value Check!
SELECT
  COUNT(*) AS total_rows
  ,COUNT(DISTINCT order_id) AS unique_order_count
  ,COUNT(DISTINCT customer_id) AS unique_customer_count
  ,COUNTIF(order_id IS NULL) AS null_order_id
  ,COUNTIF(customer_id IS NULL) AS null_customer_id
  ,COUNTIF(order_status IS NULL) AS null_order_status
  ,COUNTIF(order_purchase_timestamp IS NULL) AS null_order_purchase_timestamp
  ,COUNTIF(order_approved_at IS NULL) AS null_order_approved_at
  ,COUNTIF(order_delivered_carrier_date IS NULL) AS null_order_delivered_carrier_date
  ,COUNTIF(order_delivered_customer_date IS NULL) AS null_order_delivered_customer_date
  ,COUNTIF(order_estimated_delivery_date IS NULL) AS null_order_estimated_delivery_date
FROM `olist0626-180626-p6.Olist.olist_orders`;

--How Many Different Statuses Are There?
SELECT DISTINCT 
  order_status AS farkli_status_degerleri
FROM `olist0626-180626-p6.Olist.olist_orders`;

--Order Status Distribution!
SELECT
  order_status
  ,COUNT(*) AS order_count
FROM `olist0626-180626-p6.Olist.olist_orders`
GROUP BY order_status
ORDER BY order_count DESC;

--Which Statuses Have Null Delivery Dates?
SELECT
  order_status
  ,COUNT(*) AS order_count
  ,COUNTIF(order_delivered_customer_date IS NULL) AS null_delivered_customer_date
FROM `olist0626-180626-p6.Olist.olist_orders`
GROUP BY order_status
ORDER BY order_count DESC;

--Is The Approval Date Before The Order Date?
SELECT
  order_id
  ,order_purchase_timestamp
  ,order_approved_at
FROM `olist0626-180626-p6.Olist.olist_orders`
WHERE order_approved_at < order_purchase_timestamp;

--Is The Delivery Date Before The Order Date?
SELECT
  order_id
  ,order_purchase_timestamp
  ,order_delivered_customer_date
FROM `olist0626-180626-p6.Olist.olist_orders`
WHERE order_delivered_customer_date < order_purchase_timestamp;