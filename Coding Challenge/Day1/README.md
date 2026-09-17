<div align="center">

# 🍔 Online Food Delivery SQL Analysis

### 📊 Coding Challenge – Day 1

<p>
  <b>Role:</b> Data Analyst &nbsp; | &nbsp;
  <b>Domain:</b> Online Food Delivery &nbsp; | &nbsp;
  <b>Tool:</b> MySQL
</p>

<br>

<img src="https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-Data%20Analysis-00758F?style=for-the-badge">
<img src="https://img.shields.io/badge/Status-Completed-2E8B57?style=for-the-badge">
<img src="https://img.shields.io/badge/Challenge-Day%201-6A5ACD?style=for-the-badge">

</div>

---

## 📌 Project Overview

This project is part of a **Daily SQL Coding Challenge** designed to strengthen practical SQL and data analysis skills through business-oriented scenarios.

The scenario is based on an **online food delivery platform** where customer and order data are analyzed to answer common business questions related to:

- Customer ordering activity
- Customer spending
- Restaurant performance
- City-wise order volume
- Recent orders
- Customer ordering frequency

The analysis was performed using **MySQL** and focuses on writing SQL queries to solve each business requirement.

---

## 🎯 Business Objective

The objective is to analyze customer and order information and generate insights that can help a food delivery platform understand:

> **Who is ordering, how much customers are spending, which restaurants receive more orders, and how order activity varies across cities.**

---

## 🗂️ Database Structure

The database contains two related tables:

```text
                 ┌──────────────────────┐
                 │      CUSTOMER        │
                 ├──────────────────────┤
                 │ customer_id (PK)     │
                 │ name                 │
                 │ city                 │
                 └──────────┬───────────┘
                            │
                            │ 1 : N
                            │
                 ┌──────────▼───────────┐
                 │       ORDERS         │
                 ├──────────────────────┤
                 │ order_id (PK)        │
                 │ customer_id (FK)     │
                 │ restaurant           │
                 │ amount               │
                 │ order_date           │
                 └──────────────────────┘
                 