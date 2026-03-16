CREATE DATABASE marketing_campaign;
USE marketing_campaign;

SHOW TABLES;
SELECT * FROM marketing_campaign_dataset
LIMIT 10;

-- Channel performance Analysis
SELECT CHANNEL, sum(Customers_responded) AS total_responses
FROM marketing_campaign_dataset
GROUP BY CHANNEL;

-- Response Rate by Channel
SELECT Channel, SUM(Customers_Responded) * 1.0 / SUM(Customers_Targeted) AS response_rate
FROM marketing_campaign_dataset
GROUP BY Channel;

-- Revenue by Product
SELECT Product_type, SUM(Revenue_Generated) AS Total_revenue
FROM marketing_campaign_dataset
GROUP BY Product_type
ORDER BY Total_revenue DESC;

-- Best Campaign
SELECT Campaign_ID, Campaign_Name, Revenue_Generated
FROM marketing_campaign_dataset
ORDER BY Revenue_Generated DESC
LIMIT 5;

-- Region Performance
SELECT Region, SUM(Customers_responded) AS Responses
FROM marketing_campaign_dataset
GROUP BY Region;
