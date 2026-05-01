CREATE SCHEMA ecom_kpis;

--KPI 1 CATEGORY WISE REVENUE
CREATE OR ALTER VIEW ecom_kpis.vw_category_wise_revenue as 
SELECT
    p.product_category_name as category,
    round(sum(f.item_value),2) as total_revenue
FROM [Ecommerce_lh].[dbo].[fact_order_items] f
LEFT JOIN [Ecommerce_lh].[dbo].[dim_products] p
ON f.product_id = p.product_id
GROUP BY p.product_category_name

--KPI 2 CITY WISE ORDERS AND REVENUE
CREATE OR ALTER VIEW ecom_kpis.vw_orders_and_revenue_city AS
SELECT
    c.customer_city as city,
    count(f.order_id) as total_orders,
    sum(f.order_value) as total_value
FROM [Ecommerce_lh].[dbo].[fact_orders] f
LEFT JOIN [Ecommerce_lh].[dbo].[dim_customers] c
on c.customer_id = f.customer_id
GROUP BY c.customer_city

--KPI 3 STATE WISE ORDERS AND REVENUE
CREATE OR ALTER VIEW ecom_kpis.vw_orders_and_revenue_state AS
SELECT
    c.customer_state as state,
    count(f.order_id) as total_orders,
    sum(f.order_value) as total_value
FROM [Ecommerce_lh].[dbo].[fact_orders] f
LEFT JOIN [Ecommerce_lh].[dbo].[dim_customers] c
on c.customer_id = f.customer_id
GROUP BY c.customer_state

--KPI 4 DAILY REVENUE
CREATE OR ALTER VIEW ecom_kpis.vw_daily_revenue AS
SELECT 
    CAST(order_purchase_timestamp AS DATE) AS order_date,
    SUM(order_value) AS total_revenue
FROM [Ecommerce_lh].[dbo].[fact_orders] 
GROUP BY CAST(order_purchase_timestamp AS DATE);

--KPI 5 DELIVERY PERFORMANCE
CREATE OR ALTER VIEW ecom_kpis.vw_delivery_performance AS
SELECT 
    CASE WHEN is_delivered = 0 THEN 'NOT_DELIVERED'
    ELSE 'DELIVERED' END as delivery_status,
    count(order_id) as count
FROM [Ecommerce_lh].[dbo].[fact_orders]
GROUP BY is_delivered
