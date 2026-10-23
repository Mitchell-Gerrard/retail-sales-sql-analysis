--1. which 5 products sold the most units
select p.product_name, sum(oi.quantity) as total_units_sold
from order_items oi
join products p on oi.product_id = p.product_id
join orders o on oi.order_id = o.order_id
where o.status = 'Completed'
group by p.product_name
order by total_units_sold desc
limit 5;

-- 2. which category got the largest revenue from completed orders
select p.category, sum(p.price * oi.quantity) as total_revenue
from order_items oi
join products p on oi.product_id = p.product_id
join orders o on oi.order_id = o.order_id
where o.status = 'Completed'
group by p.category
order by total_revenue desc
limit 1;

-- 3. which products generted the most gross profit from completed orders
select p.product_name, sum((p.price - p.cost) * oi.quantity) as total_profit
from order_items oi
join products p on oi.product_id = p.product_id
join orders o on oi.order_id = o.order_id 
where o.status = 'Completed'
group by p.product_name
order by total_profit desc
limit 5;

--4. products with largest profit margin percentage
select p.product_name, ((p.price - p.cost)/p.price)*100 as profit_margin_percentage
from products p
order by profit_margin_percentage desc
limit 5;
--5. products with largest profit margin
select p.product_name, ((p.price - p.cost)) as profit_margin
from products p
order by profit_margin desc
limit 5;