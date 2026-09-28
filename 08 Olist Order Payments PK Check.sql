--Primary Key Control!
--Unique Column Check!
--Order ID Is Duplicated!
--Deduplicated By Aggregation!
SELECT  
  order_id,
  COUNT(*) AS count_repeat
FROM `olist0626-180626-p6.Olist.olist_order_payments`
GROUP BY order_id,payment_sequential
HAVING COUNT(*)>1;