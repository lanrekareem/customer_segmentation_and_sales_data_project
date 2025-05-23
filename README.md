

CUSTOMER SEGMENTATION AND SALES DATA OVERVIEW

DATA SOURCE

DATA STRUCTURE

TOOLS

CUSTOMER SEGMENTATION AND SALES DATA

This dataset provides detailed customer segmentation and sales data across different countries from 2011 to 2016. It includes key demographic attributes like customer age, age group, gender, and geographic location. Additionally, it contains purchase-related information such as product category, sub-category, order quantity, unit cost, unit price, profit, cost, and revenue.
This dataset is ideal for tasks such as:
Customer segmentation based on demographic factors
Time-series analysis of sales trends across different years and months
Product performance evaluation based on profitability and revenue
Gender-based analysis of purchasing behavior
Revenue forecasting and profit margin analysis

DATA SOURCE

The dataset was gotten from Kaggle: www.kaggle.com

DATA STRUCTURE

Columns Included:

Date: Transaction date
Day, Month, Year: Breakdown of the transaction date
Customer_Age: Age of the customer
Age_Group: Age segment (Youth, Adults)
Customer_Gender: Gender of the customer
Country: Country of the customer
State: State or region of the customer
Product_Category: Category of the product purchased
Sub_Category: Sub-category of the product
Product: Name of the product
Order_Quantity: Number of items ordered
Unit_Cost: Cost per unit of the product
Unit_Price: Selling price per unit
Profit: Total profit for the transaction
Cost: Total cost for the transaction
Revenue: Total revenue generated from the transaction

TOOLS

•	MySQL Workbench

DATA EXPLORATION

Basic Overview and Summary

•	Count of total records 
•	Preview of the first 10 rows
•	Checking of the distinct values in categorical columns

Demographic Analysis

•	Average Age of customers
•	Age distribution
•	Gender Distribution

Geographic Analysis

•	Top 10 countries by sales
•	Top 10 states by sales

Product and Category Analysis

•	Product Categories by revenue
•	Top products by quantity sold
•	Profitability by Category

Sales and Financial Metric

•	Revenue, Cost and profit summary

Customer Behavior 

•	Average Order quantity and revenue and revenue per customers 
•	Revenue by Age group and Gender

Stored Procedures

•	Top N Products by Revenue
•	Revenue by Age group and Gender
