--Customer's CLV Value Segmentation!
SELECT
  customer_segment
  ,COUNT(customer_unique_id) AS customer_count
  ,ROUND(SUM(observed_clv), 2) AS total_revenue
  ,ROUND(AVG(observed_clv), 2) AS avg_customer_value
FROM (SELECT customer_unique_id
            ,observed_clv
            ,CASE WHEN observed_clv >= 1000 THEN 'High Value Customer'
                  WHEN observed_clv >= 500 THEN 'Medium Value Customer'
                  ELSE 'Low Value Customer'
            END AS customer_segment
      FROM `olist0626-180626-p6.Olist.olist_customer_clv`)
GROUP BY customer_segment
ORDER BY total_revenue DESC;