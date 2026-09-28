--Review Score Outlier Check!
SELECT 
  MIN(review_score) AS en_dusuk_skor,
  MAX(review_score) AS en_yuksek_skor
FROM `olist0626-180626-p6.Olist.olist_order_reviews`;

--How Many Different Review Scores Are There?
SELECT
  review_score,
  COUNT(*) AS review_count
FROM `olist0626-180626-p6.Olist.olist_order_reviews`
GROUP BY review_score
ORDER BY review_score;

--Are There Multiple Reviews For The Same Order?
SELECT
  order_id,
  COUNT(*) AS review_count
FROM `olist0626-180626-p6.Olist.olist_order_reviews`
GROUP BY order_id
HAVING COUNT(*) > 1
ORDER BY review_count DESC;

--Table Null Data Check!
SELECT 
  COUNTIF(review_id IS NULL) AS bos_review_id,
  COUNTIF(order_id IS NULL) AS bos_order_id,
  COUNTIF(review_score IS NULL) AS bos_review_score,
  COUNTIF(review_creation_date IS NULL) AS bos_olusturma_tarihi,
  COUNTIF(review_answer_timestamp IS NULL) AS bos_cevap_tarihi
FROM `olist0626-180626-p6.Olist.olist_order_reviews`;

--Date Logic Check!
SELECT
  review_id,
  order_id,
  review_creation_date,
  review_answer_timestamp
FROM `olist0626-180626-p6.Olist.olist_order_reviews`
WHERE review_answer_timestamp < review_creation_date;