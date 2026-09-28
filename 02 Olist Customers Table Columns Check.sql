--Are There Any Missing Values In The Columns?
SELECT 
  COUNTIF(customer_id IS NULL) AS bos_customer_id,
  COUNTIF(customer_unique_id IS NULL) AS bos_customer_unique_id,
  COUNTIF(customer_zip_code_prefix IS NULL) AS bos_posta_kodu,
  COUNTIF(customer_city IS NULL) AS bos_sehir,
  COUNTIF(customer_state IS NULL) AS bos_eyalet,
  COUNT(*) AS toplam_satir_sayisi
FROM `olist0626-180626-p6.Olist.olist_customers`;

--Do Customer ID And Customer Unique ID Contain The Same Data?
SELECT 
  customer_id, 
  customer_unique_id,
  customer_zip_code_prefix,
  customer_city
FROM `olist0626-180626-p6.Olist.olist_customers`
WHERE customer_id = customer_unique_id;