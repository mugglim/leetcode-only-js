# Write your MySQL query statement below
SELECT 
    stock_name, 
    SUM(
        CASE  
            WHEN operation = 'Buy' THEN price * -1
            ELSE price 
       END 
    ) as "capital_gain_loss"
FROM 
    stocks
GROUP BY 
    stock_name