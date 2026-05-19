
select count(*) as total_records
from cleaned_blinkit;



describe cleaned_blinkit;


 select sum(item_outlet_sales) as total_sales
from cleaned_blinkit;




select avg(item_outlet_sales) as average_sales
from cleaned_blinkit;


select count(*) as total_orders
from cleaned_blinkit;


select item_type,sum(item_outlet_sales) as total_sales
from cleaned_blinkit
group by item_type
order by total_sales desc;

select item_identifier,sum(item_outlet_sales) as total_sales
from cleaned_blinkit
group by item_identifier
order by total_sales desc
limit 5;

select item_fat_content,sum(item_outlet_sales) as total_sales
from cleaned_blinkit
group by item_fat_content
order by total_sales desc;

select outlet_size,sum(item_outlet_sales) as total_sales
from cleaned_blinkit
group by outlet_size
order by total_sales desc;

select outlet_location_type,sum(item_outlet_sales) as total_sales
from cleaned_blinkit
group by outlet_location_type
order by total_sales desc;

