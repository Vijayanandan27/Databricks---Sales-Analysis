-- Fact sales

SELECT
  f.*,
  p.category AS category,
  c.country AS country
FROM
  workspace.salesds.fact_sales f
    JOIN workspace.salesds.dim_products p
      ON f.product_key = p.product_key
    JOIN workspace.salesds.dim_customers c
      ON f.customer_key = c.customer_key