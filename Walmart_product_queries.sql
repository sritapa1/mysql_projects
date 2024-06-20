-- PRODUCT --------------------------------

-- How many unique product lines does the data have?--

select 
count(distinct product_line)
from sales;

-- What is the most common payment method?--
select
payment_method,
count( payment_method) as payment_cnt
from sales
group by payment_method
order by payment_cnt desc;

-- What is the most selling product line?------

select 
product_line,
count( product_line) as count
from sales
group by product_line
order by count desc;

-- What is the total revenue by month?--

select
month_name as month,
sum(total_revenue) as revenue
from sales
group by month_name
order by revenue desc;

-- What month had the largest COGS?------------

select 
month_name as month,
sum(cogs) as total_cogs
from sales
group by month_name
order by total_cogs desc;
 
-- What product line had the largest revenue?-------

select
product_line ,
sum(total_revenue) as totalrevenue
from sales
group by product_line 
order by totalrevenue desc ;

-- What is the city with the largest revenue?---------

select
branch,
city,
sum(total_revenue) as totalrevenue
from sales
group by city, branch
order by totalrevenue desc;

-- What product line had the largest VAT?-----------

select
product_line,
avg(value_added_tax) as avg_vat
from sales
group by product_line
order by avg_vat desc;

-- Fetch each product line and add a column to those product line showing "Good", "Bad".
-- Good if its greater than average sales  -------------------

select
product_line,
avg(total_revenue) as avg_sales,
case
when avg(total_revenue)>(select avg(total_revenue) from sales) then "Good"
else "Bad"
end as Remarks
from sales
group by product_line;













-- Which branch sold more products than average product sold? ---------

select
branch,
avg(quantity) as avg_qty
from sales
group by branch
having avg_qty>(select avg(quantity) as avgqty_sold from sales);

-- What is the most common product line by gender?-----------

select
gender,product_line,
count(gender) as total_cnt
from sales
group by gender,product_line
order by total_cnt desc;

-- What is the average rating of each product line?----------

select
product_line,
round(avg(rating), 2) as avg_rating
from sales
group by product_line
order by avg_rating desc;



















































