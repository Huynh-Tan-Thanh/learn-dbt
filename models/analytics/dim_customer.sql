WITH dim_customer_source AS (
  SELECT *
  FROM `vit-lam-data.wide_world_importers.sales__customers`


)

SELECT 
  *
FROM dim_customer_source
