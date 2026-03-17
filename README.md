# Databricks---Sales-Analysis

# 📊 Databricks Sales Analytics Project

## 🚀 Project Overview

This project analyzes sales data using **Databricks SQL** and builds an interactive dashboard.

## 📁 Dataset

* Customers
* Products
* Sales Transactions

## 🛠 Tools Used

* Databricks
* SQL
* Delta Tables

## 📊 Key Insights

* Total Sales, Profit, Orders, Customers
* Sales by Category & Product
* Monthly Sales Trend
* Customer Age Group Analysis

## 📈 Dashboard


## 📌 Features

* Global Filters (Country, Date)
* Interactive visualizations
* Business KPI tracking

## 🔍 Key SQL Example

```sql
SELECT 
    SUM(sales_amount) AS Total_Sales,
    COUNT(DISTINCT customer_key) AS Total_Customers
FROM fact_sales;
```

## 📎 Conclusion

This project demonstrates end-to-end data analysis using Databricks, including data modeling, SQL analytics, and dashboard creation.
