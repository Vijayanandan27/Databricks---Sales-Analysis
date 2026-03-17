--- Sales by Category

USE workspace.salesds;

SELECT
  p.category AS Category_Name,
  c.country AS country,
  SUM(f.sales_amount) AS Total_sales
FROM
  dim_products p
    JOIN fact_sales f
      ON p.product_key = f.product_key
    JOIN dim_customers c
      ON c.customer_key = f.customer_key
GROUP BY
  p.category,
  c.country
ORDER BY
  Total_sales DESC