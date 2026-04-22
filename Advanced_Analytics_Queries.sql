-- Q.7 Write a SQL query to calculate the average sale for each month. 
-- Find out best selling month in each year

SELECT 
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    ROUND(AVG(total_sale),2) AS avg_sale
FROM records
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;


SELECT year, month, Total_sale
FROM (
    SELECT
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    SUM(total_sale) AS Total_sale,
    RANK() OVER(
        PARTITION BY YEAR(sale_date)
        ORDER BY SUM(total_sale) DESC
    ) AS rnk
    FROM records
    GROUP BY YEAR(sale_date), MONTH(sale_date)
) AS Ranked
WHERE rnk =1;

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 

SELECT customer_id, SUM(price_per_unit) AS Highest FROM records
GROUP BY customer_id
ORDER BY Highest DESC
LIMIT 5;

-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

WITH Shift_sales
AS
(
SELECT *,
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) <12 THEN 'Morning'
        WHEN EXTRACT (HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS Shift
FROM records
)
SELECT 
Shift, COUNT(*) AS total_records
FROM Shift_sales
GROUP BY Shift;