-- Q.4 Write a SQL query to find the average age of customers who purchased 
-- items from the 'Beauty' category.

SELECT AVG(age) AS Average_age FROM records
WHERE category = 'Beauty';

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater 
-- than 1000.

SELECT * FROM records 
WHERE total_sale > 1000;

-- Q.6 Write a SQL query to find the total number of transactions 
-- (transaction_id) made by each gender in each category.

SELECT gender, category, 
COUNT(transactions_id) AS Total_no_of_trans FROM records
GROUP BY gender, category
ORDER BY category, gender;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

SELECT category, COUNT(DISTINCT customer_id) AS Unique_customer FROM records
GROUP BY category;