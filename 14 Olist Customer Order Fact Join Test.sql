--Number Of Delivered Orders With Customer Information And Payment Information!
SELECT
  COUNT(*) AS expected_final_rows,
  COUNT(DISTINCT o.order_id) AS expected_unique_orders
FROM `olist0626-180626-p6.Olist.olist_orders_clean` o
INNER JOIN `olist0626-180626-p6.Olist.olist_customers_clean` c
  ON o.customer_id = c.customer_id
INNER JOIN `olist0626-180626-p6.Olist.olist_order_payments_clean` p
  ON o.order_id = p.order_id
WHERE o.order_status = 'delivered';

--Is There Row Duplication After The Join?
SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT order_id) AS unique_orders
FROM `olist0626-180626-p6.Olist.olist_customer_order_fact`;

--Number Of Delivered Orders!
SELECT
  COUNT(*) AS delivered_orders,
  COUNT(DISTINCT order_id) AS delivered_unique_orders
FROM `olist0626-180626-p6.Olist.olist_orders_clean`
WHERE order_status = 'delivered';

--Are There Delivered Orders Without Customer Matches?
SELECT
  COUNT(*) AS missing_customer_count
FROM `olist0626-180626-p6.Olist.olist_orders_clean` o
LEFT JOIN `olist0626-180626-p6.Olist.olist_customers_clean` c
  ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
  AND c.customer_id IS NULL;

--Are There Delivered Orders Without Payment Matches?
SELECT
  COUNT(*) AS missing_payment_count
FROM `olist0626-180626-p6.Olist.olist_orders_clean` o
LEFT JOIN `olist0626-180626-p6.Olist.olist_order_payments_clean` p
  ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
  AND p.order_id IS NULL;

--Find Orders That Do Not Match With Payment!
SELECT
  o.order_id,
  o.customer_id,
  o.order_status,
  o.order_purchase_date
FROM `olist0626-180626-p6.Olist.olist_orders_clean` o
LEFT JOIN `olist0626-180626-p6.Olist.olist_order_payments_clean` p
  ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
  AND p.order_id IS NULL;

--Is This Order In The Payment Table? No!
--It Will Not Be Included In The Revenue Analysis!
SELECT
  *
FROM `olist0626-180626-p6.Olist.olist_order_payments`
WHERE order_id = 'bfbd0f9bdef84302105ad712db648a6c';