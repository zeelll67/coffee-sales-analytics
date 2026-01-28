-- =====================================================
-- Coffee Sales Analytics - Master SQL Script
-- Platform: Microsoft Fabric Lakehouse (SQL Analytics Endpoint)
-- Table: coffee_sales_clean
-- Purpose: Business-driven analysis for reporting & Power BI
-- =====================================================

-- -----------------------------------------------------
-- 01) Total revenue and number of orders by coffee type
-- -----------------------------------------------------
SELECT
    coffee_name,
    SUM(money)  AS total_revenue,
    COUNT(*)    AS order_count,
    AVG(money)  AS avg_ticket
FROM coffee_sales_clean
GROUP BY coffee_name
ORDER BY total_revenue DESC;

-- -----------------------------------------------------
-- 02) Revenue and orders by time of day
--     (Morning / Afternoon / Night)
-- -----------------------------------------------------
SELECT
    time_of_day,
    SUM(money) AS total_revenue,
    COUNT(*)   AS order_count
FROM coffee_sales_clean
GROUP BY time_of_day
ORDER BY total_revenue DESC;

-- -----------------------------------------------------
-- 03) Peak sales hours
-- -----------------------------------------------------
SELECT
    hour_of_day,
    COUNT(*)    AS order_count,
    SUM(money)  AS total_revenue
FROM coffee_sales_clean
GROUP BY hour_of_day
ORDER BY order_count DESC;

-- -----------------------------------------------------
-- 04) Monthly sales performance across the year
-- -----------------------------------------------------
SELECT
    month_name,
    COUNT(*)    AS order_count,
    SUM(money)  AS total_revenue,
    AVG(money)  AS avg_ticket
FROM coffee_sales_clean
GROUP BY month_name
ORDER BY total_revenue DESC;
