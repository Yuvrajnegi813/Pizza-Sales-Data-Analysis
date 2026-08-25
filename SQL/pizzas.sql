-- Pizza Sales Analysis
use pizzas;

-- 1.)Retrieve the total number of orders placed.
select count(order_id) from order_details;

-- Making a full fledged data combined all 4 data by view 
create view Full_Data as
select order_details.order_details_id, order_details.order_id, order_details.pizza_id, order_details.quantity,
orders.date,orders.time,pizza_types.pizza_type_id,pizza_types.name,pizza_types.category,pizza_types.ingredients,pizzas.size, pizzas.price
from pizzas
join pizza_types
on pizzas.pizza_type_id=pizza_types.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
join orders
on orders.order_id=order_details.order_id;

-- 2.)Calculate the total revenue generated from pizza sales.
 select round(sum(quantity*price)) as Total_Revenue from Full_Data;
 
-- 3.)Identify the highest-priced pizza. 
select name,price from Full_data
order by price desc limit 1;

-- 4.)Identify the most common pizza size ordered. 
select size,count(*) as Total_orders from Full_Data
group by size order by Total_orders desc;

-- 5.)List the top 5 most ordered pizza types along with their quantities.
select pizza_type_id,sum(quantity) as Total_quantity from Full_data
group by pizza_type_id order by Total_quantity desc limit 5;

-- 6.)Join the necessary tables to find the total quantity of each pizza category ordered. 
select category,sum(quantity) as Total_quantity from Full_data
group by category order by Total_quantity;

-- 7.)Determine the distribution of orders by hour of the day.(Doubt)
select hour(time) as Time_of_order,count(*) as orders from orders
group by Time_of_order order by orders desc;


-- 8.)Join relevant tables to find the category-wise distribution of pizzas. 
select category,count(*) as Total_order from Full_data
group by category order by Total_order;

-- 9.)Group the orders by date and calculate the average number of pizzas ordered per day.(Doubt)
select avg(order_day) from (select day(date) as day,avg(quantity) as order_day from full_data
group by day order by order_day) as t;

select sum(quantity)/count(date) from Full_data; 

select count(date) from Full_data;

-- 10.)Determine the top 3 most ordered pizza types based on revenue.
select pizza_type_id,sum(price*quantity) as Revenue from full_data
group by pizza_type_id order by Revenue desc limit 3;

