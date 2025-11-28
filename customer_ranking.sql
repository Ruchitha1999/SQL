-- Customer ranking using window functions

SELECT 
    customer_id,
    customer_name,
    total_purchase,
    ROW_NUMBER() OVER (ORDER BY total_purchase DESC) AS row_number_rank,
    RANK() OVER (ORDER BY total_purchase DESC) AS rank_value,
    DENSE_RANK() OVER (ORDER BY total_purchase DESC) AS dense_rank_value
FROM customer_sales;