# Pizza Sales Data Analysis

An end-to-end data analysis project using SQL to analyze pizza sales data and uncover meaningful business insights.

## 📌 Project Overview

This project focuses on analyzing pizza sales data using SQL to uncover meaningful business insights. The analysis explores different aspects of pizza sales, including total orders, sales performance, pizza categories, sizes, popular pizza types, and daily ordering trends.

The project uses multiple related datasets and SQL queries to transform raw data into useful insights. The goal is to understand customer ordering patterns and overall sales performance.

## 🎯 Objectives

The main objectives of this project are:

- Analyze the overall pizza sales and ordering patterns.
- Identify the most and least popular pizza types based on customer orders.
- Determine the most commonly ordered pizza sizes and categories.
- Analyze daily and monthly order trends.
- Identify the top-performing pizzas based on order quantity.
- Use SQL queries to extract meaningful insights from the raw pizza sales data.

- ## 📂 Dataset Description

The project uses four related datasets containing information about pizza orders, order details, pizza sizes and prices, and pizza types.

- **orders.csv** – Contains order information, including the order ID, date, and time of each order.
- **order_details.csv** – Contains details of the pizzas included in each order, including order ID, pizza ID, and quantity.
- **pizzas.csv** – Contains information about individual pizzas, including pizza ID, pizza type ID, size, and price.
- **pizza_types.csv** – Contains details about different pizza types, including pizza name, category, and ingredients.

These datasets are related through common IDs and are combined using SQL `JOIN` operations to perform comprehensive pizza sales analysis.

## 🛠️ Tools & Technologies Used

- **SQL** – Used for data analysis and extracting business insights.
- **MySQL** – Used to store, manage, and query the pizza sales data.

## 💻 SQL Concepts Used

This project demonstrates the use of various SQL concepts, including:

- `SELECT` statements for retrieving data.
- `WHERE` clauses for filtering data.
- Aggregate functions such as `SUM()`, `COUNT()`, and `AVG()`.
- `GROUP BY` for grouping data.
- `ORDER BY` for sorting results.
- `JOIN` operations for combining data from multiple tables.
- Subqueries for performing advanced analysis.

- ## 📊 Key Analysis

The project focuses on answering the following business questions using SQL:

1. Retrieve the total number of orders placed.
2. Calculate the total revenue generated from pizza sales.
3. Identify the highest-priced pizza.
4. Identify the most common pizza size ordered.
5. List the top 5 most ordered pizza types along with their quantities.
6. Find the total quantity of each pizza category ordered using SQL joins.
7. Determine the distribution of orders by hour of the day.
8. Find the category-wise distribution of pizzas using relevant table joins.
9. Calculate the average number of pizzas ordered per day.
10. Determine the top 3 most ordered pizza types based on revenue.

## 📁 Project Structure

This project is organized into different files and sections to keep the analysis structured and easy to understand.

* `Dataset` – Contains the pizza sales dataset used for analysis.
* `SQL` – Contains SQL queries used to analyze the data and answer business questions.
* `Python` – Contains Python code used for further analysis and visualization.
* `README.md` – Provides an overview of the project, objectives, tools, and key findings.
* `Report` – Contains the detailed analysis, insights, and conclusions of the project.

## 🏁 Conclusion

This project demonstrates how SQL and Python can be used to analyze pizza sales data and generate meaningful business insights.

* Analyzed overall pizza sales and order performance.
* Identified popular pizza types and sizes.
* Examined category-wise sales and ordering patterns.
* Analyzed sales trends to understand customer demand.
* Generated insights that can support better business decision-making.
* Demonstrated the practical application of data analysis in a real-world sales scenario.
