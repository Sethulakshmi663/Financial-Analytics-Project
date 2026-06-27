USE financial_analytics;
SELECT * 
FROM clean_financial_data
LIMIT 10;
SELECT SUM(Sales) AS Total_Sales
FROM clean_financial_data;
SELECT SUM(Profit) AS Total_Profit
FROM clean_financial_data;

SELECT
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM clean_financial_data;

SELECT Country,
SUM(Sales) AS Total_Sales
FROM clean_financial_data
GROUP BY Country
ORDER BY Total_Sales DESC;

SELECT Product,
SUM(Profit) AS Total_Profit
FROM clean_financial_data
GROUP BY Product
ORDER BY Total_Profit DESC;

SELECT Segment,
SUM(Sales) AS Total_Sales
FROM clean_financial_data
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT Product,
SUM(Sales) AS Total_Sales
FROM clean_financial_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT Country,
ROUND(AVG(Profit),2) AS Average_Profit
FROM clean_financial_data
GROUP BY Country;