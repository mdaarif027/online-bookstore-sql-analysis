# 📚 Online Bookstore SQL Analysis

## 📌 Project Overview

This is an end-to-end SQL data analysis project based on an Online Bookstore dataset.

The project uses PostgreSQL to analyze books, customers, and orders and extract useful business insights using SQL queries.

## 🎯 Project Objective

The main objective of this project is to analyze bookstore data and answer important business questions related to:

- Book sales
- Customer behavior
- Revenue
- Book inventory
- Genres
- Authors
- Orders

## 🛠️ Tools & Technologies

- PostgreSQL
- SQL
- pgAdmin
- GitHub

## 🗂️ Database Tables

The database contains three main tables:

### 1. Books
Contains information about books such as:

- Book ID
- Title
- Author
- Genre
- Published Year
- Price
- Stock

### 2. Customers
Contains customer information such as:

- Customer ID
- Name
- Email
- Phone
- City
- Country

### 3. Orders
Contains order information such as:

- Order ID
- Customer ID
- Book ID
- Order Date
- Quantity
- Total Amount

## 🔍 SQL Analysis Performed

The project answers business questions such as:

1. Retrieve all books in the Fiction genre.
2. Find books published after 1950.
3. List customers from Canada.
4. Show orders placed in November 2023.
5. Calculate the total stock of books.
6. Find the most expensive book.
7. Find customers who ordered more than one quantity.
8. Retrieve orders with total amount above $20.
9. List all available book genres.
10. Find the book with the lowest stock.
11. Calculate total revenue generated from orders.
12. Calculate total books sold for each genre.
13. Find the average price of Fantasy books.
14. Find customers who placed at least two orders.
15. Find the most frequently ordered book.
16. Find the top 3 most expensive Fantasy books.
17. Calculate total quantity of books sold by each author.
18. Find cities where customers spent more than $30.
19. Find the customer who spent the most.
20. Calculate remaining stock after fulfilling all orders.

## 🧠 SQL Concepts Used

The project demonstrates practical use of:

- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT
- BETWEEN
- Aggregate Functions
  - SUM()
  - AVG()
  - COUNT()
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- COALESCE()
- Foreign Keys
- PRIMARY KEY

## 📊 Key Analysis Areas

### 📚 Book Analysis
- Most expensive books
- Lowest-stock books
- Book genres
- Average price by genre
- Published books

### 👥 Customer Analysis
- Customers by country
- Customers with multiple orders
- Highest-spending customers
- Customer spending by city

### 🛒 Sales & Order Analysis
- Total revenue
- Total books sold
- Most frequently ordered books
- Sales by genre
- Sales by author

### 📦 Inventory Analysis
- Total stock
- Remaining stock after orders
- Low-stock books

## 📁 Project Structure

```text
online-bookstore-sql-analysis/
│
├── data/
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
│
├── SQL/
│   └── online_bookstore_analysis.sql
│
└── README.md
