use task3;

-- Database 
SELECT * FROM `sales_data`;


-- Classify profit
SELECT 
    `Product Name`,
    Profit,
    CASE 
        WHEN Profit > 100 THEN 'High Profit'
        WHEN Profit BETWEEN 0 AND 100 THEN 'Medium Profit'
        ELSE 'Loss'
    END AS Profit_Category
FROM sales_data;


-- high-performing regions
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
HAVING SUM(Sales) > 50000;


-- SUBQUERY
SELECT `Product Name`, Sales
FROM sales_data
WHERE Sales > (
    SELECT AVG(Sales) FROM sales_data
);


 -- Business Question
 SELECT 
    Category,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Profit DESC;

