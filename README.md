# 📊 Task 6: Sales Trend Analysis Using Aggregations (MySQL)

## 🎯 Objective
Analyze **monthly revenue** and **order volume** using SQL aggregation functions.

---

## 🛠️ Tools Used
- MySQL Workbench
- SQL (DDL + DML + Aggregation Queries)
- CSV Export

---

## 📁 Dataset
A table named `orders` with the following schema:

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    product_id INT NOT NULL
);
