select*from Sales;
select*from products;
select*from exchange_rate;
select*from customers;
select*from Stored;
EXEC sp_help 'Sales';
----Checking for Null value
----sales
SELECT *
FROM Sales
WHERE Order_Number IS NULL
   OR Order_Date IS NULL
   OR CustomerKey IS NULL
   OR StoreKey IS NULL
   OR ProductKey IS NULL
   OR Quantity IS NULL
   OR Currency_Code IS NULL
   OR Delivery_Date IS NULL;
   SELECT *
FROM Sales
WHERE Delivery_Date IS NULL;

----product
SELECT *
FROM Products
WHERE ProductKey IS NULL
   OR Product_Name IS NULL
   OR Brand IS NULL
   OR Unit_Cost_USD IS NULL
   OR Unit_Price_USD IS NULL
   OR Category IS NULL;
   ----Exchange rate
   SELECT *
FROM Exchange_Rate
WHERE Date IS NULL
   OR Currency IS NULL
   OR Exchange IS NULL;
------customer
SELECT *
FROM Customers
WHERE CustomerKey IS NULL
   OR Gender IS NULL
   OR Name IS NULL
   OR Country IS NULL;
   SELECT *
FROM Customers
WHERE Birthday IS NULL;
----store
SELECT *
FROM Stored
WHERE StoreKey IS NULL
   OR Country IS NULL;
   SELECT *
FROM Stored
WHERE Open_Date IS NULL;

----Checking for duplicate
---Sales table
SELECT Order_Number, Line_Item, COUNT(*) AS DuplicateCount
FROM Sales
GROUP BY Order_Number, Line_Item
HAVING COUNT(*) > 1;
----product table
SELECT ProductKey, COUNT(*) AS DuplicateCount
FROM Products
GROUP BY ProductKey
HAVING COUNT(*) > 1;
----customer table
SELECT CustomerKey, COUNT(*) AS DuplicateCount
FROM Customers
GROUP BY CustomerKey
HAVING COUNT(*) > 1;
----store table
SELECT StoreKey, COUNT(*) AS DuplicateCount
FROM Stored
GROUP BY StoreKey
HAVING COUNT(*) > 1;
----Exchange rate
SELECT Date, Currency, COUNT(*) AS DuplicateCount
FROM Exchange_Rate
GROUP BY Date, Currency
HAVING COUNT(*) > 1;
---checking for datatype
SELECT
    Order_Date,
    Delivery_Date
FROM Sales;
SELECT Birthday
FROM Customers;
SELECT Open_Date
FROM Stored;
--------BUSINESS METRIC CALCULATIONS
----Total quantity
SELECT 
    SUM(Quantity) AS Total_Quantity
FROM Sales;
----Total transaction
SELECT 
    COUNT(*) AS Total_Transactions
FROM Sales;
---total customers
SELECT 
    COUNT(DISTINCT CustomerKey) AS Total_Customers
FROM Customers;
----Total revenue
SELECT 
    SUM(s.Quantity * p.unit_price_USD
) AS Total_Revenue
FROM Sales s
JOIN Products p
ON s.ProductKey = p.ProductKey;

SELECT 
    COUNT(*) AS Total_Orders
FROM Sales;

SELECT COUNT(DISTINCT Order_Number) AS Total_Orders
FROM Sales;

