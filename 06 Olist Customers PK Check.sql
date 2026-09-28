--Primary Key Control!
--Unique Column Check!
SELECT  
  customer_id,
  COUNT(*) AS count_repeat
FROM `olist0626-180626-p6.Olist.olist_customers`
GROUP BY customer_id
HAVING COUNT(*)>1;