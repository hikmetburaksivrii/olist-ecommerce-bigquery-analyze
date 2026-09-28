/*Once the query is executed, the results should be saved as a table to 
generate the 'Olist Order Reviews Clean' table. This is a prerequisite 
for building the 'Order Fact' table.*/

SELECT
  order_id,
  ROUND(AVG(CAST(review_score AS FLOAT64)), 2) AS avg_review_score,
  COUNT(*) AS review_count,
  MIN(CAST(review_creation_date AS DATE)) AS first_review_date,
  MAX(CAST(review_answer_timestamp AS DATE)) AS last_review_answer_date
FROM `olist0626-180626-p6.Olist.olist_order_reviews`
GROUP BY order_id;