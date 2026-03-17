-- KPI Metrics

USE workspace.salesds;

SELECT
  p.category AS category,
  c.country AS country,
  SUM(f.sales_amount) AS Total_Sales,
  SUM(f.sales_amount - (p.cost * f.quantity)) AS Total_Profit,
  SUM(f.quantity) AS Total_Quantity,
  COUNT(DISTINCT f.customer_key) AS Total_Customers,
  SUM(f.sales_amount) / COUNT(DISTINCT f.customer_key) AS Sales_per_Customer,
  COUNT(DISTINCT f.order_number) AS Total_Orders
FROM
  fact_sales f
    JOIN dim_products p
      ON p.product_key = f.product_key
    JOIN dim_customers c
      ON c.customer_key = f.customer_key
GROUP BY
  p.category,
  c.country