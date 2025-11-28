-- Segment-wise performance comparison using partitions

SELECT
    segment,
    category,
    sales_amount,
    AVG(sales_amount) OVER (PARTITION BY segment) AS avg_segment_sales,
    AVG(sales_amount) OVER (PARTITION BY category) AS avg_category_sales
FROM sales_data;