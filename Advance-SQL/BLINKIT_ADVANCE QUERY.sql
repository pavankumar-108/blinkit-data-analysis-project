use blinkit_project;

with sales_by_type as (select item_type,
						ROUND(sum(item_outlet_sales),2) aS TOTAL_SALES, COUNT(*) AS total_item_sold,
                        ROUND(avg(item_outlet_sales),2) as avg_sales_per_item from cleaned_blinkit 
                        group by item_type)
                        select*
                        from sales_by_type
                        order by total_sales desc
                        limit 5;



WITH sales_ranked as (select outlet_type,item_type,
					ROUND(SUM(item_outlet_sales),2) as total_sales,
                    rank() over(
								PARTITION BY outlet_type
                                order by sum(item_outlet_sales) desc
							) as sales_rank from cleaned_blinkit
                             group by outlet_type, item_type)
                        select *
                        from sales_ranked
                        where sales_rank<=3
                        order by outlet_type,sales_rank;





WITH yearly_sales AS (SELECT 
        outlet_establishment_year,
        ROUND(SUM(item_outlet_sales), 2) AS year_sales
    FROM cleaned_blinkit
    GROUP BY outlet_establishment_year
    ORDER BY outlet_establishment_year)
SELECT 
    outlet_establishment_year, 
    year_sales,
    ROUND(SUM(year_sales) OVER(ORDER BY outlet_establishment_year), 2) AS cumulative_sales
FROM yearly_sales;





WITH yearly_sales AS (
    SELECT 
        outlet_establishment_year,
        ROUND(SUM(item_outlet_sales), 2) AS year_sales
    FROM cleaned_blinkit
    GROUP BY outlet_establishment_year)SELECT outlet_establishment_year,year_sales,
    LAG(year_sales, 1) OVER(ORDER BY outlet_establishment_year) AS prev_year_sales
FROM yearly_sales
ORDER BY outlet_establishment_year;


select outlet_type,
	   ROUND(AVG(item_outlet_sales),2) as avg_sales
       from cleaned_blinkit
       group by outlet_type
       having avg(item_outlet_sales) >(select avg(item_outlet_sales)
										from cleaned_blinkit)
                                        order by avg_sales desc;






