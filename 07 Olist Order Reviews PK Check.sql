--Primary Key Control!
--Unique Column Check!
--Order ID Deduplicated By Aggregation!
SELECT  
  order_id,
  COUNT(*) AS count_repeat
FROM `olist0626-180626-p6.Olist.olist_order_reviews`
GROUP BY review_id,order_id
HAVING COUNT(*)>1;

SELECT  
  order_id,
  review_id,
  COUNT(*) AS count_repeat
FROM `olist0626-180626-p6.Olist.olist_order_reviews`
GROUP BY review_id,order_id
HAVING COUNT(*)>1;