CREATE TABLE orders
(
    order_id      INT PRIMARY KEY,
    customer_name VARCHAR(100),
    item          VARCHAR(100),
    quantity      INT,
    price         DECIMAL(10, 2),
    district      VARCHAR(50),
    order_date    DATE
);


INSERT INTO orders (order_id, customer_name, item, quantity, price, district, order_date)
VALUES (1, 'Aayush ', 'Buff Momo', 2, 180.00, 'Kathmandu', '2024-01-15'),
       (2, 'Sita ', 'Masala Tea', 3, 60.00, 'Jhapa', '2024-02-10'),
       (3, 'Niraj', 'Veg Chowmein', 1, 140.00, 'Lalitpur', '2024-03-25'),
       (4, 'Dipa', 'Chicken Momo', 2, 220.00, 'Jhapa', '2024-04-05'),
       (5, 'Rohan', 'Aloo Fry', 2, 120.00, 'Kathmandu', '2024-03-12');

SELECT order_id, customer_name, item, quantity, price, district, order_date
FROM orders
WHERE district = 'Jhapa';

SELECT customer_name, item
FROM orders
WHERE price > 150;

SELECT item, quantity AS ordered_qty
FROM orders
WHERE item = 'Buff Momo'
   OR item = 'Veg Chowmein'
   OR item = 'Masala Tea';

SELECT customer_name, order_date
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31';


SELECT order_id, customer_name, item, quantity, price, district, order_date
FROM orders
WHERE item NOT LIKE '%Momo%';