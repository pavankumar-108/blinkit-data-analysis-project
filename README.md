# Blinkit Sales & Business Performance Analysis

End-to-end retail sales analysis project using Python, MySQL, and Power BI on the Blinkit Grocery dataset.

---

##  Project Overview
This project presents an end-to-end retail sales analysis performed on the Blinkit Grocery dataset using Python, MySQL, and Power BI. The analysis focuses on identifying sales trends, product performance, customer purchasing patterns, and outlet-level business insights to support data-driven decision-making.

---

##  Technologies Used
- Python (Pandas, NumPy)
- Matplotlib & Seaborn
- MySQL
- Power BI
- Excel
- GitHub

---

##  Project Workflow
- Performed data cleaning and preprocessing using Python Pandas
- Handled missing values and validated dataset consistency
- Conducted exploratory data analysis (EDA) to identify sales trends and category performance
- Executed SQL queries in MySQL for business analysis and KPI extraction
- Built an interactive Power BI dashboard for visualization and reporting
- Generated actionable business insights from retail sales data

---

## Key Business Insights
- Fruits & Vegetables emerged as the highest revenue-generating category
- Snack Foods showed strong and consistent sales contribution
- Low Fat products generated significantly higher sales compared to Regular products
- Tier 3 outlets contributed the highest overall revenue among all outlet locations
- Medium-sized outlets outperformed both Small and High-sized outlets in total sales
- Product `FDY55` recorded the highest sales among all products in the dataset

---

## Dashboard Preview
![Dashboard Preview](dashboard.png)

---

## Dashboard Highlights
The Power BI dashboard includes:
- Total Sales KPI
- Total Orders KPI
- Average Sales KPI
- Sales by Item Type
- Sales by Fat Content
- Top 5 Performing Products
- Outlet Size Performance
- Outlet Location Analysis

---

##  Project Files
- `blinkit.ipynb` → Data cleaning and EDA using Python
- `blinkit_analysis.sql` → SQL business analysis queries
- `Advance-SQL/BLINKIT_ADVANCE_QUERY.sql` →  Advanced Window Functions & CTEs
- `blink_it dashboard.pbix` → Interactive Power BI dashboard
- `dashboard.png` → Dashboard preview image
- `cleaned_Blinkit.csv` → Cleaned dataset used for analysis
- `screenshots/` → SQL query output screenshots

## 🚀 Advanced SQL Analysis

Upgraded from basic queries to solve complex business problems using Window Functions:

| Query | Skill Used | Business Question |
| --- | --- | --- |
| 1 | CTE | Top 5 Item Types by Sales |
| 2 | RANK() OVER(PARTITION BY) | Top 3 items per outlet type |
| 3 | SUM() OVER | Cumulative sales growth by year |
| 4 | LAG() | Year-over-Year comparison |
| 5 | Subquery + HAVING | Outlets above company average |

### Sample Output - Segment Ranking
![Top 3 Items by Outlet Type](Advance-SQL/ADVANCE_SQL_SCREENSHOTS/2_RANK_Top3_Item_By_FatContent.png)

**View Code:** [Advance-SQL/BLINKIT_ADVANCE_QUERY.sql](./Advance-SQL/BLINKIT_ADVANCE_QUERY.sql)

---

## Conclusion
This project demonstrates practical experience in data cleaning, SQL-based business analysis, dashboard development, and insight generation. It showcases the ability to transform raw retail data into meaningful business intelligence using industry-standard data analytics tools.

---

## Author
Pavan Kumar  
Aspiring Data Analyst
