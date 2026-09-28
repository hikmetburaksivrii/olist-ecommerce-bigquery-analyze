--Primary Key Control!
--Unique Column Check!
SELECT  
  order_id,
  COUNT(*) AS count_repeat
FROM `olist0626-180626-p6.Olist.olist_orders`
GROUP BY order_id
HAVING COUNT(*)>1;