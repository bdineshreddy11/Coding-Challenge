<div align="center">

# 🍔 Online Food Delivery SQL Analysis

### 📊 Coding Challenge — Day 1

**Data Analyst | SQL | MySQL | Business Data Analysis**

<br>

<img src="https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-Data%20Analysis-00758F?style=for-the-badge">
<img src="https://img.shields.io/badge/Status-Completed-2E8B57?style=for-the-badge">
<img src="https://img.shields.io/badge/Challenge-Day%201-6A5ACD?style=for-the-badge">

</div>

---

## 📌 Overview

This repository contains my **Day 1 SQL Coding Challenge** based on an online food delivery platform.

The challenge focuses on solving practical business questions using SQL and analyzing customer and order data.

The analysis covers:

* Customer ordering activity
* Customer spending
* Restaurant performance
* City-wise order volume
* Recent orders
* Customer ordering frequency

---

## 🎯 Business Objective

The objective is to analyze customer and order information and answer business questions such as:

> **Who is ordering, how much are customers spending, which restaurants receive more orders, and how does order activity vary across cities?**

---

## 🗄️ Database Structure

The database is named:

```text
onlinefood
```

It contains two related tables:

```text
┌──────────────────────────┐
│        CUSTOMER          │
├──────────────────────────┤
│ customer_id (PK)        │
│ name                    │
│ city                    │
└────────────┬─────────────┘
             │
             │ 1 : N
             │
┌────────────▼─────────────┐
│         ORDERS           │
├──────────────────────────┤
│ order_id (PK)           │
│ customer_id (FK)        │
│ restaurant              │
│ amount                  │
│ order_date              │
└──────────────────────────┘
```

---

## 👤 Customer Table

| Column        | Data Type   | Description                           |
| ------------- | ----------- | ------------------------------------- |
| `customer_id` | INT         | Primary key identifying each customer |
| `name`        | VARCHAR(50) | Customer name                         |
| `city`        | VARCHAR(50) | Customer's city                       |

---

## 🧾 Orders Table

| Column        | Data Type     | Description                           |
| ------------- | ------------- | ------------------------------------- |
| `order_id`    | INT           | Primary key identifying each order    |
| `customer_id` | INT           | Foreign key referencing the customer  |
| `restaurant`  | VARCHAR(50)   | Restaurant where the order was placed |
| `amount`      | DECIMAL(10,2) | Order amount                          |
| `order_date`  | DATE          | Date of the order                     |

---

## 🔗 Table Relationship

The database follows a **one-to-many relationship** between customers and orders.

```text
One Customer
     │
     ├── Order 1
     ├── Order 2
     ├── Order 3
     └── ...
```

The relationship is established using:

```sql
FOREIGN KEY (customer_id)
REFERENCES customer(customer_id);
```

This ensures that each order is associated with a valid customer.

---

## 📊 SQL Analysis

The challenge contains **10 business-oriented SQL questions**.

|  # | Business Question                            | SQL Concepts                      |
| -: | -------------------------------------------- | --------------------------------- |
| 01 | Customers who placed at least one order      | `JOIN`, `DISTINCT`                |
| 02 | Total amount spent by each customer          | `SUM()`, `GROUP BY`               |
| 03 | Top 3 customers based on spending            | `SUM()`, `ORDER BY`, `LIMIT`      |
| 04 | Orders placed in the latest 7-day period     | `MAX()`, Subquery, `INTERVAL`     |
| 05 | Customers who never placed an order          | `LEFT JOIN`, `IS NULL`            |
| 06 | Restaurant with the highest number of orders | `COUNT()`, `GROUP BY`, `ORDER BY` |
| 07 | Bengaluru customers spending more than ₹1000 | `WHERE`, `SUM()`, `HAVING`        |
| 08 | Total number of orders per city              | `JOIN`, `COUNT()`, `GROUP BY`     |
| 09 | Average order amount for each restaurant     | `AVG()`, `GROUP BY`               |
| 10 | Customers who placed more than 5 orders      | `COUNT()`, `HAVING`               |

---

## 🧠 SQL Concepts Practiced

### 🔹 Data Retrieval

```text
SELECT
FROM
WHERE
```

### 🔹 Table Joins

```text
INNER JOIN
LEFT JOIN
```

### 🔹 Aggregate Functions

```text
SUM()
COUNT()
AVG()
MAX()
```

### 🔹 Grouping and Filtering

```text
GROUP BY
HAVING
```

### 🔹 Sorting and Limiting

```text
ORDER BY
LIMIT
```

### 🔹 Subqueries

```sql
SELECT MAX(order_date)
FROM orders;
```

### 🔹 Date Analysis

```sql
INTERVAL 7 DAY
```

### 🔹 Duplicate Handling

```text
DISTINCT
```

---

## 📈 Key Analysis Results

The following results were obtained from the provided dataset.

### 💰 Customer Spending

Customer spending was calculated by aggregating the order amounts for each customer.

### 🏆 Highest Spending

The highest total spending was recorded by:

**Priya — ₹1,300.00**

### 🍽️ Highest-Order Restaurant

The restaurant with the highest number of orders was:

**Meghana Foods — 3 orders**

### 🏙️ City-Wise Order Activity

The highest number of orders came from:

**Bengaluru — 5 orders**

### 👤 Customers Without Orders

The following customers did not place any orders:

* Kiran
* Asha

### 📦 High-Frequency Customers

No customer placed more than **5 orders** in the provided dataset.

---

## 🛠️ Tools & Technologies

| Technology         | Purpose                                   |
| ------------------ | ----------------------------------------- |
| 🐬 MySQL           | Database creation and SQL analysis        |
| 📊 SQL             | Data querying and business analysis       |
| 💻 MySQL Workbench | Query development and execution           |
| 📝 Microsoft Word  | Query and output documentation            |
| 🐙 Git & GitHub    | Version control and repository management |

---

## 📁 Day 1 Folder Structure

The Day 1 challenge is organized as follows:

```text
Coding-Challenge/
│
├── Day-1/
│   │
│   ├── Day_1_Coding_Challenge.sql
│   ├── Day_1_Coding_Challenge.docx
│   └── README.md
│
└── ...
```

---

## 📄 Day_1_Coding_Challenge.sql

Contains:

* Database creation
* Table creation
* Primary key constraint
* Foreign key constraint
* Data insertion
* 10 SQL analysis queries

---

## 📄 Day_1_Coding_Challenge.docx

Contains:

* Business questions
* SQL queries
* Query outputs
* Challenge documentation

---

## 📄 README.md

Contains:

* Challenge overview
* Database structure
* SQL concepts
* Analysis results
* Tools used
* Learning outcomes

---

## ▶️ How to Run

### Step 1 — Open MySQL

Open **MySQL Workbench** or another MySQL client.

### Step 2 — Create the Database

```sql
CREATE DATABASE onlinefood;

USE onlinefood;
```

### Step 3 — Create the Tables

Execute the table creation queries from:

`Day_1_Coding_Challenge.sql`

### Step 4 — Insert the Data

Execute the provided `INSERT` statements for the `customer` and `orders` tables.

### Step 5 — Run the Analysis

Execute the **10 SQL queries** included in the SQL file.

### Step 6 — Verify the Results

Compare the SQL results with the outputs documented in:

`Day_1_Coding_Challenge.docx`

---

## 🔍 Sample Analysis

### Top 3 Customers by Total Spending

```sql
SELECT 
    c.customer_id,
    c.name,
    SUM(o.amount) AS total_spending
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY SUM(o.amount) DESC
LIMIT 3;
```

### Result

| Customer | Total Spending |
| -------- | -------------: |
| Priya    |      ₹1,300.00 |
| Swathi   |      ₹1,250.00 |
| Divya    |      ₹1,100.00 |

---

## 💡 Business Questions Answered

This challenge answers practical questions including:

* Which customers have placed orders?
* How much has each customer spent?
* Who are the top spending customers?
* What orders were placed during the latest 7-day period?
* Which customers have never placed an order?
* Which restaurant received the highest number of orders?
* Which Bengaluru customers spent more than ₹1000?
* How many orders were placed in each city?
* What is the average order amount for each restaurant?
* Which customers placed more than 5 orders?

---

## 🎓 Learning Outcomes

This challenge helped reinforce practical SQL skills in:

* Translating business requirements into SQL queries
* Joining related tables
* Using aggregate functions
* Grouping data for analysis
* Filtering aggregated results using `HAVING`
* Working with date conditions
* Using subqueries
* Identifying customers with and without orders
* Ranking results using `ORDER BY` and `LIMIT`
* Interpreting query results from a business perspective

---

## ✅ Challenge Status

| Task                 | Status      |
| -------------------- | ----------- |
| Database Setup       | ✅ Completed |
| Table Creation       | ✅ Completed |
| Data Insertion       | ✅ Completed |
| SQL Queries          | ✅ Completed |
| Query Validation     | ✅ Completed |
| Output Documentation | ✅ Completed |
| README Documentation | ✅ Completed |

<div align="center">

### 🟢 Day 1 — Completed

</div>

---

## 👨‍💻 Author

<div align="center">

### **Dinesh Reddy**

**Aspiring Data Analyst**

`SQL` • `MySQL` • `Data Analysis` • `Joins` • `Aggregations` • `Business Problem Solving`

</div>
