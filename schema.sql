PRAGMA foreign_keys = ON;


CREATE TABLE customers ( 
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city TEXT NOT NULL
);

CREATE TABLE products(
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL,
    cost REAL NOT NULL
);

CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date TEXT NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (customer_id) 
    REFERENCES customers(customer_id)
);
CREATE TABLE order_items(
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (order_id) 
    REFERENCES orders(order_id),
    FOREIGN KEY (product_id) 
    REFERENCES products(product_id)
);
INSERT INTO customers VALUES
(1, 'Alex Smith', 'London'),
(2, 'Jamie Brown', 'Manchester'),
(3, 'Taylor Jones', 'Bristol'),
(4, 'Morgan Lee', 'Leeds'),
(5, 'Sam Wilson', 'Southampton'),
(6, 'Jordan Taylor', 'London');

INSERT INTO products VALUES
(1, 'Laptop Stand', 'Office', 35.00, 15.00),
(2, 'Wireless Mouse', 'Electronics', 25.00, 10.00),
(3, 'Keyboard', 'Electronics', 60.00, 28.00),
(4, 'Notebook', 'Stationery', 5.00, 1.50),
(5, 'Desk Lamp', 'Office', 30.00, 12.00),
(6, 'Water Bottle', 'Lifestyle', 18.00, 6.00);

INSERT INTO orders VALUES
(101, 1, '2025-01-05', 'Completed'),
(102, 2, '2025-01-12', 'Completed'),
(103, 1, '2025-01-20', 'Completed'),
(104, 3, '2025-02-02', 'Completed'),
(105, 4, '2025-02-15', 'Cancelled'),
(106, 5, '2025-02-21', 'Completed'),
(107, 2, '2025-03-03', 'Completed'),
(108, 6, '2025-03-11', 'Returned'),
(109, 3, '2025-03-18', 'Completed'),
(110, 1, '2025-03-25', 'Completed'),
(111, 4, '2025-04-04', 'Completed'),
(112, 5, '2025-04-16', 'Completed');

INSERT INTO order_items VALUES
(1, 101, 1, 1),
(2, 101, 2, 2),
(3, 102, 3, 1),
(4, 102, 4, 4),
(5, 103, 5, 1),
(6, 103, 2, 1),
(7, 104, 6, 2),
(8, 104, 4, 3),
(9, 105, 1, 1),
(10, 106, 3, 1),
(11, 106, 5, 2),
(12, 107, 2, 2),
(13, 107, 4, 5),
(14, 108, 6, 1),
(15, 109, 1, 2),
(16, 109, 3, 1),
(17, 110, 5, 1),
(18, 110, 6, 2),
(19, 111, 2, 1),
(20, 111, 4, 6),
(21, 112, 1, 1),
(22, 112, 3, 1);