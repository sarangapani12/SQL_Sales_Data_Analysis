-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

SELECT * FROM records 
WHERE sale_date = '2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 
-- 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022

SELECT * FROM records
WHERE category = 'Clothing' 
AND
quantiy > 2
AND 
sale_date >= '2022-11-01'
AND 
sale_date <= '2022-11-30';

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each 
-- category.

SELECT  category, SUM(total_sale) AS Total_sales FROM records
GROUP BY category;