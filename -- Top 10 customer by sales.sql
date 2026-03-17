-- Top 10 customer by sales

USE workspace.salesds;

SELECT
  CONCAT(c.first_name, c.last_name) AS Customer_Name,
  p.category AS category,
  c.country AS country,
  SUM(f.sales_amount) AS Total_Sales
FROM
  dim_customers c
    JOIN fact_sales f
      ON c.customer_key = f.customer_key
    JOIN dim_products p
      ON p.product_key = f.product_key
GROUP BY
  Customer_Name,
  p.category,
  c.country
ORDER BY
  Total_Sales DESC
LIMIT 10