-- Sales over time

USE workspace.salesds;

SELECT
  DATE_FORMAT(f.order_date, 'yyyy-MM') AS ORDER_MONTH,
  p.category AS category,
  c.country AS country,
  SUM(f.sales_amount) AS Total_Sales
FROM
  fact_sales f
    JOIN dim_products p
      ON f.product_key = p.product_key
    JOIN dim_customers c
      ON f.customer_key = c.customer_key
GROUP BY
  ORDER_MONTH,
  p.category,
  c.country
ORDER BY
  ORDER_MONTH