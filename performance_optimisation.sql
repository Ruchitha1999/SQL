-- Query optimisation using indexing and restructuring

-- Example index
CREATE INDEX idx_sales_customer ON sales(customer_id);

-- Restructured query using CTE instead of subqueries
WITH sales_cte AS (
    SELECT customer_id, SUM(amount) AS total_sales
    FROM sales
    GROUP BY customer_id
)
SELECT *
FROM sales_cte
ORDER BY total_sales DESC;
