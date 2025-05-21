create database E_Commerce;
use E_Commerce;
select * from ecommerce;

-- 1. total number of order count
select count(order_id) as Total_Orders from ecommerce;

-- 2. total revenue from sales
select sum(order_value) as Total_Revenue from ecommerce;

-- 3. top 5 product category order

select Product_Category, count(*) AS Total_Orders
from ecommerce
group by product_category
order by total_orders desc
limit 5;

--  4. total sales as per product category
select Product_Category, sum(order_value) as Total_Sales
from ecommerce
group by product_category
order by total_sales desc;

-- 5. Top 5 orders with the highest delivery time:

select Order_ID, Delivery_Time, Product_Category
from ecommerce
order by Delivery_Time desc
limit 5;

-- 6. Most orders based on time

select Order_Time, count(Order_ID) as Total_Orders
from ecommerce
group by Order_Time
order by Total_Orders desc;

-- 7. Total revenue based on platform

select Platform, sum(order_value) as Total_Revenue
from ecommerce
group by Platform
order by Total_Revenue desc;





 