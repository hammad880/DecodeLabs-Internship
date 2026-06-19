-- View Dataset

SELECT *
FROM orders
LIMIT 10;


-- Total Orders

SELECT COUNT(*) AS Total_Orders
FROM orders;


-- Total Revenue

SELECT SUM(TotalPrice) AS Total_Revenue
FROM orders;


-- Average Order Value

SELECT AVG(TotalPrice) AS Average_Order_Value
FROM orders;


-- Highest Order

SELECT *
FROM orders
ORDER BY TotalPrice DESC
LIMIT 1;


-- Lowest Order

SELECT *
FROM orders
ORDER BY TotalPrice ASC
LIMIT 1;


-- Orders Greater Than 2000

SELECT *
FROM orders
WHERE TotalPrice > 2000;


-- Orders From Instagram

SELECT *
FROM orders
WHERE ReferralSource = 'Instagram';


-- Delivered Orders

SELECT *
FROM orders
WHERE OrderStatus = 'Delivered';


-- Count Orders By Product

SELECT
Product,
COUNT(*) AS TotalOrders
FROM orders
GROUP BY Product
ORDER BY TotalOrders DESC;


-- Revenue By Product

SELECT
Product,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;


-- Average Price By Product

SELECT
Product,
AVG(TotalPrice) AS AveragePrice
FROM orders
GROUP BY Product
ORDER BY AveragePrice DESC;


-- Orders By Payment Method

SELECT
PaymentMethod,
COUNT(*) AS Orders
FROM orders
GROUP BY PaymentMethod
ORDER BY Orders DESC;


-- Revenue By Payment Method

SELECT
PaymentMethod,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY PaymentMethod
ORDER BY Revenue DESC;


-- Referral Sources

SELECT
ReferralSource,
COUNT(*) AS Customers
FROM orders
GROUP BY ReferralSource
ORDER BY Customers DESC;


-- Top 5 Customers

SELECT
CustomerID,
SUM(TotalPrice) AS Spending
FROM orders
GROUP BY CustomerID
ORDER BY Spending DESC
LIMIT 5;


-- Product Revenue Above 180000

SELECT
Product,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
HAVING Revenue > 180000
ORDER BY Revenue DESC;