-- Number of sales made in each time of the day per weekday----------

select
time_of_day,
count(*) as total_sales
from sales
where day_name = "monday"
group by time_of_day;

-- Which of the customer types brings the most revenue?--------

select
customer_type,
round(sum(total_revenue),2) as total_rev
from sales
group by customer_type
order by total_rev  desc;

-- Which city has the largest tax percent/ VAT?--

SELECT city, MAX(value_added_tax) AS max_vat
FROM sales
GROUP BY city
ORDER BY max_vat DESC;

-- Which customer type pays the most in VAT?------

SELECT customer_type, MAX(value_added_tax) AS max_vat
FROM sales
GROUP BY customer_type
ORDER BY max_vat DESC;































