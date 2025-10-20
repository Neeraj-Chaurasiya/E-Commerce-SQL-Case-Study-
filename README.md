# 🛒 E-Commerce SQL Case Study


A complete **end-to-end SQL project** analyzing e-commerce sales data using **Joins, Aggregations, Subqueries, Views, Procedures, Triggers, and Optimization Techniques**.  
This project simulates a real-world e-commerce business scenario — tracking customers, products, and sales while generating meaningful insights.

## 🔧 Tech Stack
- Microsoft SQL Server
- SSMS (SQL Server Management Studio)
- T-SQL

## 📊 Key Features
- City-wise and Category-wise Sales Analysis
- Top Products and Customers by Revenue
- Automated Triggers for Sales Entry
- Reusable Views and Stored Procedures

## 📊 **Project Overview**

This project demonstrates:
- Data modeling (Customers, Products, Sales)
- Business KPIs using SQL analytics
- Performance tuning with indexes and views
- Automation using triggers and stored procedures

---

## 🧱 **Database Schema**

### 🧍 Customers
| Column | Type | Description |
|--------|------|-------------|
| CustomerID | INT (PK) | Unique customer ID |
| CustomerName | VARCHAR(100) | Customer full name |
| City | VARCHAR(50) | Customer city |
| Email | VARCHAR(100) | Contact email |

### 📦 Products
| Column | Type | Description |
|--------|------|-------------|
| ProductID | INT (PK) | Unique product ID |
| ProductName | VARCHAR(100) | Product name |
| Category | VARCHAR(50) | Product category |
| Price | DECIMAL(10,2) | Product price |

### 🧾 Sales
| Column | Type | Description |
|--------|------|-------------|
| SaleID | INT (PK) | Unique sale ID |
| CustomerID | INT (FK) | References Customers |
| ProductID | INT (FK) | References Products |
| Quantity | INT | Number of items sold |
| SaleDate | DATE | Date of sale |

---

## 🚀 **Key SQL Concepts Used**

| Concept | Description |
|----------|--------------|
| Joins | Combine data from multiple tables |
| Subqueries | Nested queries for deeper insights |
| Aggregations | SUM, AVG, COUNT, MAX, MIN |
| Views | Reusable query results |
| Stored Procedures | Predefined analytical queries |
| Triggers | Automatic events after INSERT/UPDATE |
| Indexes | Query optimization for faster performance |

---

## 🧠 **Business Insights**
- **Top-Selling Products**  
  Identify which products bring maximum revenue.

- **City-wise Revenue Analysis**  
  Measure performance across customer locations.

- **Customer Segmentation**  
  Find out who your top buyers are.

- **Category-wise Trends**  
  Compare fashion vs electronics performance.

---

## 📂 Project Structure
- `scripts/` → SQL code (DDL, DML, Analysis)
- `outputs/` → Generated reports and screenshots
- `README.md` → Project summary

## 🏁 Outcome
Showcases advanced SQL knowledge with real business insights.
Perfect for **freelancing portfolio** or **data analyst interviews**.
