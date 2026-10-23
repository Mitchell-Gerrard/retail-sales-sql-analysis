-- 1. viewing all the products in the products table
select * from products;
select count(*) from products;
select count(distinct category) from products;
select distinct category from products;
-- 2. viewing all the customers in the customers table
select * from customers;
select count(*) from customers;
select count(distinct city) from customers;

-- 3. viewing all the orders in the orders table
select * from orders;
select count(*) from orders;
select count(distinct status) from orders;
select count(*) as [number with status], status FROM orders GROUP BY status;
--4. Veiwing all the order items in the order_items table
select * from order_items;

--5. are there any orders with no matching customer or orders with no product?
select * from orders o left join customers c on o.customer_id = c.customer_id where c.customer_id is null;
select * from order_items oi left join products p on oi.product_id = p.product_id where p.product_id is null;
