WITH fact_sales_order_line_source AS (
  SELECT *
  FROM `vit-lam-data.wide_world_importers.sales__order_lines`
)

, fact_sales_order_line__rename_column AS (
  SELECT 
    order_line_id AS sales_order_line_key
    , stock_item_id AS product_key
    , quantity 
    , unit_price 
  FROM fact_sales_order_line_source
)

SELECT*
FROM fact_sales_order_line__rename_column