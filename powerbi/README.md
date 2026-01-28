📌 Project Overview

This folder contains the Power BI dashboard developed for the Coffee Sales Analytics project.
The dashboard is built on cleaned and validated data stored in Microsoft Fabric (OneLake) and focuses on delivering business-ready insights related to sales performance, trends, and customer behavior.

This report follows a modern BI architecture, where:

Data cleaning & validation are handled upstream in Microsoft Fabric

Power BI is used purely for analytics and visualization

🏗️ Data Source & Architecture

Platform: Microsoft Fabric

Storage Layer: OneLake (Lakehouse)

Dataset / Table: coffee_sales_clean

Connection Type: Direct connection via OneLake Catalog

Power BI connects directly to the Fabric Lakehouse without exporting or duplicating data locally, ensuring:

Single source of truth

Consistent data governance

Enterprise-ready BI architecture

📊 Dashboard Features
Key Performance Indicators (KPIs)

Total Sales

Total Transactions

Average Order Value (AOV)

Top-Selling Coffee

Visual Analysis

Monthly sales trend (seasonality analysis)

Total sales by coffee type

Sales distribution by hour of day (peak-hour analysis)

Product-wise contribution to total revenue

Interactivity

Filters by Month

Filters by Weekday

Filters by Payment Type (cash / card)

🧮 DAX Usage (Overview)

DAX measures are used to calculate:

Total revenue

Transaction counts

Average order value

Identification of top-performing products

The DAX logic is designed to be:

Business-oriented

Readable and reusable

Optimized for reporting performance

📁 Files Included

coffee_sales_dashboard.pbix – Power BI report connected to Microsoft Fabric OneLake

dashboard_overview.png – Full dashboard overview

monthly_sales.png – Monthly sales trend visualization

sales_by_coffeename.png – Sales by coffee type visualization

🧠 Skills Demonstrated

Power BI data modeling & visualization

DAX for KPI calculations

Microsoft Fabric & OneLake integration

Business-focused dashboard design
