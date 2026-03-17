-- No. of order by age group

USE workspace.salesds;

SELECT
  CASE
    WHEN FLOOR(DATE_DIFF(CURRENT_DATE, c.birthdate) / 365) < 25 THEN "Under 25"
    WHEN FLOOR(DATE_DIFF(CURRENT_DATE, c.birthdate) / 365) BETWEEN 25 AND 34 THEN "25-34"
    WHEN FLOOR(DATE_DIFF(CURRENT_DATE, c.birthdate) / 365) BETWEEN 35 AND 44 THEN "35-44"
    WHEN FLOOR(DATE_DIFF(CURRENT_DATE, c.birthdate) / 365) BETWEEN 45 AND 54 THEN "45-54"
    ELSE "55+"
  END AS Age_Group,
  p.category AS category,
  c.country AS country,
  COUNT(DISTINCT f.order_number) AS Total_Orders
FROM
  dim_customers c
    JOIN fact_sales f
      ON c.customer_key = f.customer_key
    JOIN dim_products p
      ON p.product_key = f.product_key
GROUP BY
  Age_Group,
  p.category,
  c.country
ORDER BY
  Age_Group