-- 1. which 5 customers spent the most money on completed orders
select c.customer_name, sum(p.price * oi.quantity) as total_spent
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.status = 'Completed'
group by c.customer_name
order by total_spent desc
limit 5;

-- 2. Which customers are repeated

select c.customer_name, count(o.order_id) as order_count
from customers c
join orders o on c.customer_id = o.customer_id
where o.status = 'Completed'
group by c.customer_name
having count(o.order_id) > 1
order by order_count desc;

-- 3. which cites have the most completed orders
select c.city, count(o.order_id) as completed_orders
from customers c
join orders o on c.customer_id = o.customer_id
where o.status = 'Completed'
group by c.city
order by completed_orders desc;

-- 4. customers that have never placed an order
select c.customer_name
from customers c
left join orders o on c.customer_id = o.customer_id
where o.order_id is null;