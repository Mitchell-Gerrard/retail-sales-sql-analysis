-- 1.  total revenue from all completed orders
select sum(p.price * oi.quantity) as total_revenue
from orders o
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.status = 'Completed';

--2. total number of units sold across all completed orders
select sum(oi.quantity) as total_units_sold
from orders o
join order_items oi on o.order_id = oi.order_id
where o.status = 'Completed';

--3. month with the highest revenue from completed orders
select strftime('%Y-%m', o.order_date) as month, sum(p.price * oi.quantity) as monthly_revenue
from orders o
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.status = 'Completed'
group by month
order by monthly_revenue desc;
--4 month with largest profit from completed orders
select strftime('%Y-%m', o.order_date) as month, sum((p.price - p.cost) * oi.quantity) as monthly_profit
from orders o
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.status = 'Completed'
group by month
order by monthly_profit desc;
--5. average order value for completed orders
select avg(p.price * oi.quantity) as average_order_value
from orders o
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.status = 'Completed';
--6 How many orders were completed, cancelled, and returned as a percentage?
select o.status, count(*) as order_count, (count(*) * 100.0 / (select count(*) from orders)) as percentage
from orders o
group by o.status;