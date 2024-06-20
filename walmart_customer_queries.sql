
-- How many unique customer types does the data have and their respective count?-----------------
SELECT 
    customer_type, 
    COUNT(*) AS customer_count
FROM 
    sales
GROUP BY 
    customer_type;
    
    -- How many unique payment methods does the data have and ?-----------
    
    SELECT 
    payment_method, 
    COUNT(*) AS count_of_payment
FROM 
    sales
GROUP BY 
    payment_method;
    
   -- What is the most common customer type?----------
   SELECT 
    customer_type, 
    COUNT(*) AS customer_count
FROM 
    sales
GROUP BY 
    customer_type;
    
 -- Which customer type buys the most?-------------
  
  SELECT 
    customer_type, 
    COUNT(*) AS customer_count
FROM 
    sales
GROUP BY 
    customer_type;
    
--  What is the gender of most of the customers?-------------------

select
gender,
count(*) as gender_cnt
from sales
group by gender
order by gender_cnt;

-- What is the gender distribution per branch?-------------

select
gender,
branch,
count(*)gender
from sales
group by gender,branch
order by branch;

-- Which time of the day do customers give most ratings?-------------------

select
time_of_day,
round(avg(rating),2) as avg_rating
from sales
group by time_of_day
order by avg_rating;

-- Which time of the day do customers give most ratings per branch?--------------

select
time_of_day,branch,
round(avg(rating),2) as avg_rating
from sales
group by time_of_day,branch
order by avg_rating desc;

-- Which day fo the week has the best avg ratings?------------------

select 
day_name,
round(avg(rating),2) as avg_rating
from sales
group by day_name
order by avg_rating desc limit 1;

-- Which day of the week has the best average ratings per branch?--------------------

select 
day_name,branch,
round(avg(rating),2) as avg_rating
from sales
group by day_name,branch
order by avg_rating desc;























 
    
    
    
    
    
    
    
    
    
    
    