--Missing Value Check!
SELECT 
  COUNTIF(order_id IS NULL) AS bos_order_id,
  COUNTIF(payment_sequential IS NULL) AS bos_odeme_sirasi,
  COUNTIF(payment_type IS NULL) AS bos_odeme_tipi,
  COUNTIF(payment_installments IS NULL) AS bos_taksit_sayisi,
  COUNTIF(payment_value IS NULL) AS bos_odeme_tutari
FROM `olist0626-180626-p6.Olist.olist_order_payments`;

--Minimum And Maximum Value Check!
SELECT 
  MIN(payment_value) AS en_dusuk_odeme,
  MAX(payment_value) AS en_yuksek_odeme,
  MIN(payment_installments) AS en_az_taksit,
  MAX(payment_installments) AS en_cok_taksit,
  MIN(payment_sequential) AS en_az_odeme_adimi,
  MAX(payment_sequential) AS en_fazla_odeme_adimi
FROM `olist0626-180626-p6.Olist.olist_order_payments`;

--Negative Payment Check!
SELECT 
  COUNT(*) AS eksi_bakiyeli_satir_sayisi
FROM `olist0626-180626-p6.Olist.olist_order_payments`
WHERE payment_value < 0;

--All Zero-Installment Payments!
SELECT 
  payment_type, 
  COUNT(*) AS sifir_liralik_islem_sayisi
FROM `olist0626-180626-p6.Olist.olist_order_payments`
WHERE payment_value = 0
GROUP BY payment_type;

--Payment Types!
SELECT DISTINCT payment_type 
FROM `olist0626-180626-p6.Olist.olist_order_payments`;

--Are There Multiple Payments For The Same Order?
SELECT
  order_id,
  COUNT(*) AS payment_count,
  ROUND(SUM(payment_value), 2) AS total_payment_value
FROM `olist0626-180626-p6.Olist.olist_order_payments`
GROUP BY order_id
HAVING COUNT(*) > 1
ORDER BY payment_count DESC;