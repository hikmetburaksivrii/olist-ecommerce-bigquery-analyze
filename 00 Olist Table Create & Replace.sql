--Creating New Tables With Updated Table Names!
--These Tables Will Be Used For Analysis!
CREATE OR REPLACE TABLE `olist0626-180626-p6.Olist.olist_customers` 
AS SELECT * FROM `olist0626-180626-p6.Olist.olist_customer_dataset`;

CREATE OR REPLACE TABLE `olist0626-180626-p6.Olist.olist_orders` 
AS SELECT * FROM `olist0626-180626-p6.Olist.olist_orders_dataset`;

CREATE OR REPLACE TABLE `olist0626-180626-p6.Olist.olist_order_reviews` 
AS SELECT * FROM `olist0626-180626-p6.Olist.olist_order_reviews_dataset`;

CREATE OR REPLACE TABLE `olist0626-180626-p6.Olist.olist_order_payments` 
AS SELECT * FROM `olist0626-180626-p6.Olist.olist_order_payments_dataset`;