# GCC-GLOBAL-ELECTRONIC-CAPSTONE-PROJECT
This capstone project was completed as part of the Nexquantum Academy × PAC Foundation Data Analytics Program.

## Project Overview

The project analyzes the sales performance of a global electronics retailer using transactional, customer, product, store, and exchange rate data. The objective is to uncover business insights, evaluate sales performance, and provide data-driven recommendations to support strategic decision-making.

---

## 🎯 Project Objectives
The primary goals of this analysis are to:
* **Analyze overall sales performance** by measuring revenue, profit, and profit margin.
* **Identify growth drivers** by uncovering the best-performing products, brands, and categories.
* **Evaluate customer behavior** across different demographics and purchasing habits.
* **Compare regional performance** to analyze sales across countries, continents, and store formats.
* **Track monthly sales trends** to identify seasonality and low-performing periods.
* **Provide actionable business recommendations** backed by data.

---

## 🗂️ Dataset Architecture
The analysis combines five distinct datasets to build a comprehensive relational sales model:

1. **Sales:** Transactional data (orders, quantities, dates, store keys).
2. **Customers:** Demographic profiles (age, gender, location).
3. **Products:** Product details (categories, subcategories, brands, cost, price).
4. **Stores:** Store metadata (location, square footage, open dates).
5. **Exchange Rates:** Currency conversion data to standardize financial metrics.

---

## 🛠️ Tools & Technologies
The project was executed using a modern data analytics stack:
* **Microsoft Excel** – Initial data inspection, profiling, and quick ad-hoc cleaning.
* **Python (Pandas, NumPy)** – Advanced data exploration, validation, and programmatic calculations.
* **SQL Server** – Data cleaning, complex queries, and relational table joins.
* **Power BI** – Star schema data modeling, DAX measures, interactive dashboard design, and visualization.

---

## 📈 Data Preparation & ETL Pipeline
To ensure data integrity and analytical accuracy, the following workflow was implemented:
1. **Extraction:** Imported raw datasets from CSV files.
2. **Cleaning (SQL & Excel):** 
   * Checked for missing values, nulls, and duplicate records.
   * Standardized and corrected inconsistent data types (e.g., dates, currencies).
   * Handled outlier values.
3. **Transformation (SQL Server):** Joined relational tables into a unified analytical schema.
4. **Modeling (Power BI):** Imported the cleaned database, established a schema, and wrote custom DAX measures for core KPIs.

---

## 📊 Dashboard Architecture

### Dashboard 1 – Executive Sales Overview
*High-level summary of corporate performance.*
* **KPI Cards:** Total Revenue, Total Profit, Profit Margin (%), Total Orders.
* **Monthly Revenue & Profit Trend:** Identifies peak seasons and sales dips.
* **Revenue by Continent:** Visualizes geographic market share.
* **Revenue by Currency:** Displays sales volume across different operating currencies.

### Dashboard 2 – Product & Category Performance
*Deep dive into inventory and profitability.*
* **Revenue by Category & Subcategory:** Breaks down top-tier product drivers.
* **Profit by Brand:** Evaluates which manufacturing partners generate the most value.
* **Top & Bottom Products:** Highlights absolute best-sellers and slow-moving stock.
* **Product Profit Margin:** Analyzes pricing power across different items.

### Dashboard 3 – Geography, Stores & Customers
*Analysis of retail locations and demographic segments.*
* **Revenue by Country:** Identifies the strongest physical markets.
* **Revenue per Square Meter:** Measures store efficiency and spatial performance.
* **Demographics:** Breaks down customer gender distribution and revenue contribution by age group.

---

## 📌 Key Insights
Based on the dashboard visualizations and calculations:

* **High-Level Financials:** Generated **$55.76M in total revenue** with **$33.09M in total profit**, reflecting an exceptionally strong **59.35% profit margin**.
* **Product Champions:** **Computers** emerged as the highest revenue-generating product category.
* **Geographic Leaders:** **North America** remains the dominant, strongest-performing region.
* **Target Demographics:** **Senior customers** represent the highest revenue-generating age bracket.
* **Seasonality Trends:** **February** recorded the highest monthly sales peak, while **April** registered the lowest.

---

## 💡 Strategic Recommendations

* **Double Down on Computers:** Increase capital allocation, inventory depth, and marketing spend for the Computers category to maximize return on investment.
* **Targeted Senior Campaigns:** Design marketing initiatives, loyalty programs, and user-friendly digital experiences tailored directly to the high-value Senior demographic.
* **Smooth Out Seasonality:** Introduce aggressive promotional campaigns, product bundles, or targeted discounts during historically low-sales months (specifically April) to stabilize monthly cash flow.
* **Optimize Retail Space:** Audit stores with low "Revenue per Square Meter" and apply spatial layout best practices from top-performing North American stores to lagging regions.
* **Hedging & Currency Monitoring:** Actively monitor exchange rate fluctuations to implement financial hedging strategies, reducing risk on international sales.
