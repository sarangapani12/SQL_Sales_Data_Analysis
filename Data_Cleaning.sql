SELECT * FROM records 
WHERE transactions_id = NULL;

SELECT * FROM records 
WHERE sale_date = NULL;

SELECT * FROM records 
WHERE sale_time = NULL;

SELECT * FROM records 
WHERE customer_id = NULL;

SELECT * FROM records 
WHERE gender = NULL;

SELECT * FROM records 
WHERE age = NULL;

SELECT * FROM records 
WHERE category = NULL;

SELECT * FROM records 
WHERE quantiy = NULL;

SELECT * FROM records 
WHERE price_per_unit = NULL;

SELECT * FROM records 
WHERE cogs = NULL;

SELECT * FROM records 
WHERE total_sale = NULL;

DELETE FROM records
WHERE 
    transactions_id is NULL
    OR  
    sale_date = NULL
    OR
    sale_time = NULL
    OR
    customer_id = NULL
    OR
    gender = NULL
    OR
    category IS NULL
    OR
    quantiy IS NULL
    OR
    cogs IS NULL;