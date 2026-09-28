/*Once the query is executed, the results should be saved as a table 
to generate the 'Olist Orders Clean' table. This is a prerequisite 
for building the 'Order Fact' table*/

SELECT
  order_id,
  customer_id,
  order_status,
  CAST(order_purchase_timestamp AS DATE) AS order_purchase_date,
  CAST(order_approved_at AS DATE) AS order_approved_date,
  CAST(order_delivered_customer_date AS DATE) AS order_delivered_date,
  DATE_DIFF(CAST(order_approved_at AS DATE),
            CAST(order_purchase_timestamp AS DATE),DAY) AS approval_days,
  DATE_DIFF(CAST(order_delivered_customer_date AS DATE),
            CAST(order_purchase_timestamp AS DATE),DAY) AS delivery_days
FROM `olist0626-180626-p6.Olist.olist_orders`;