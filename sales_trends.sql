-- Running totals and moving averages for sales trends

SELECT 
    order_date,
    sales_amount,
    SUM(sales_amount) OVER (ORDER BY order_date) AS running_total,
    AVG(sales_amount) OVER (
        ORDER BY order_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS moving_avg_7_day
FROM daily_sales;