# E-commerce Data Warehouse (Star Schema)

## 📌 Overview

This project demonstrates the design and implementation of a **Star Schema Data Warehouse** for an e-commerce system using SQL.

The goal is to analyze sales data and generate business insights such as revenue trends, top products, and customer-based analysis.

---

## 🧱 Data Model (Star Schema)

### ⭐ Fact Table

* **fact_sales**

  * Stores transactional sales data
  * Measures: quantity

### 📦 Dimension Tables

* **dim_date** → Date information
* **dim_customer** → Customer details
* **dim_product** → Product details
* **dim_store** → Store information

---

## ⚙️ Features Implemented

* Star Schema design
* Primary & Foreign key relationships
* Indexed fact table for performance optimization
* Analytical queries using JOINs and aggregations
* Revenue calculation using `quantity * price`

---

## 📊 Business Insights

* Total Sales Revenue
* Sales by Product
* Sales by City
* Monthly Sales Trend
* Top Selling Product

---

## 🛠️ Technologies Used

* MySQL
* SQL

---

## 📁 Project Structure

```bash
ecommerce-data-warehouse-star-schema/
│
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_analysis_queries.sql
├── README.md
```

---

## 🚀 How to Run

1. Run `01_create_tables.sql`
2. Run `02_insert_data.sql`
3. Run `03_analysis_queries.sql`

---

## 📈 Sample Query

```sql
SELECT p.product_name, SUM(f.quantity * p.price) AS revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;
```

---

## 🎯 Learning Outcomes

* Understanding of Data Warehousing concepts
* Hands-on experience with Star Schema
* Writing optimized SQL queries
* Using indexes for performance

---

## 🔥 Future Improvements

* Add ETL pipeline using Python (Pandas)
* Implement Slowly Changing Dimensions (SCD)
* Build dashboard using Power BI
