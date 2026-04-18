CREATE DATABASE ecommerce;
USE ecommerce;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/train.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM superstore_new LIMIT 10;

SELECT SUM(Sales) FROM superstore_new;
SELECT SUM(Profit) FROM superstore_new;
DESCRIBE superstore_new;
SELECT SUM(Sales) FROM superstore_new;
SELECT Region, SUM(Sales)
FROM superstore_new
GROUP BY Region;
SELECT `Product Name`, SUM(Sales) AS total_sales
FROM superstore_new
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 5;
SELECT Category, SUM(Sales)
FROM superstore_new
GROUP BY Category;

SELECT Segment, SUM(Sales)
FROM superstore_new
GROUP BY Segment;