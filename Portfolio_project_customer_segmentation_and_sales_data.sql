# Basic Overview and Summary
-- Count of total records
SELECT COUNT(*) AS Total_Transactions
FROM customer_segmentation;

-- Preview the first few rows
SELECT *
FROM customer_segmentation
LIMIT 10;


-- Check distinct values in categorical columns
SELECT DISTINCT Age_Group
 FROM customer_segmentation;
 
SELECT DISTINCT Customer_Gender 
FROM customer_segmentation;

SELECT DISTINCT Country
FROM customer_segmentation;

SELECT DISTINCT Product_Category
FROM customer_segmentation;


# Demographic Analysis
-- Age and Gender Distribution:

-- Average age of customers
SELECT AVG(Customer_Age) AS Average_Age 
FROM customer_segmentation;

-- Age distribution
SELECT Age_Group, COUNT(*) AS Count
FROM customer_segmentation
GROUP BY Age_Group;

-- Gender distribution
SELECT Customer_Gender, COUNT(*) AS Count
FROM customer_segmentation
GROUP BY Customer_Gender;

SELECT Age_Group, Customer_Gender, COUNT(*) AS Count
FROM customer_segmentation
GROUP BY Age_Group, Customer_Gender
ORDER BY Age_Group;


# Geographic Analysis
-- Top Countries or States by Sales:

SELECT Country, SUM(Revenue) AS Total_Revenue
FROM customer_segmentation
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT State, SUM(Revenue) AS Total_Revenue
FROM customer_segmentation
GROUP BY State
ORDER BY Total_Revenue DESC
LIMIT 10;


#Product and Category Analysis
-- Best Selling Categories and Products:

-- Product categories by revenue
SELECT Product_Category, SUM(Revenue) AS Total_Revenue
FROM customer_segmentation
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

-- Top products by quantity sold
SELECT Product, SUM(Order_Quantity) AS Total_Units_Sold
FROM customer_segmentation
GROUP BY Product
ORDER BY Total_Units_Sold DESC
LIMIT 10;

-- Profitability by Category:
SELECT Product_Category, SUM(Profit) AS Total_Profit
FROM customer_segmentation
GROUP BY Product_Category
ORDER BY Total_Profit DESC;

# Sales and Financial Metrics
-- Revenue, Cost, and Profit Summary:

SELECT
    SUM(Revenue) AS Total_Revenue,
    SUM(Cost) AS Total_Cost,
    SUM(Profit) AS Total_Profit
FROM customer_segmentation;

# Customer Behavior
-- Average Order Quantity and Revenue Per Customer:
SELECT
    AVG(Order_Quantity) AS Avg_Order_Quantity,
    AVG(Revenue) AS Avg_Revenue
FROM customer_segmentation;

-- Revenue by Age Group and Gender:
SELECT
    Age_Group,
    Customer_Gender,
    SUM(Revenue) AS Total_Revenue
FROM customer_segmentation
GROUP BY Age_Group, Customer_Gender
ORDER BY Age_Group;


#Stored Procedures
--  Top N Products by Revenue

DELIMITER $$
CREATE PROCEDURE GetTopProductsByRevenue(IN top_n INT)
BEGIN
    SELECT Product, SUM(Revenue) AS Total_Revenue
    FROM customer_segmentation
    GROUP BY Product
    ORDER BY Total_Revenue DESC
    LIMIT top_n;
END$$
DELIMITER ;

CALL GetTopProductsByRevenue(10);

--  Revenue by Age Group and Gender

DELIMITER $$
CREATE PROCEDURE GetRevenueByAgeAndGender()
BEGIN
    SELECT
        Age_Group,
        Customer_Gender,
        SUM(Revenue) AS Total_Revenue
    FROM customer_segmentation
    GROUP BY Age_Group, Customer_Gender
    ORDER BY Age_Group, Customer_Gender;
END$$
DELIMITER ;

CALL GetRevenueByAgeAndGender()

