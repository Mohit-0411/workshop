
CREATE TABLE menu
(
    item_id   int primary key,
    item_name varchar(20),
    category  varchar(10),
    price     int,
    is_veg    boolean
);

INSERT INTO menu (item_id, item_name, category, price, is_veg)
VALUES (1, 'Samosa', 'snack', 15.00, TRUE),
       (2, 'Veg Burger', 'snack', 50.00, TRUE),
       (3, 'Chola Namkeen', 'snack', 70.00, TRUE),
       (4, 'Pakoda', 'meal', 120.00, TRUE),
       (5, 'Chow mein', 'meal', 150.00, FALSE),
       (6, 'Momo', 'meal', 60.00, TRUE),
       (7, 'Coffee', 'drink', 40.00, TRUE),
       (8, 'Chai', 'drink', 10.00, TRUE);

SELECT *
FROM menu;

SELECT item_name, price
FROM menu;

INSERT INTO menu (item_id, item_name, category, is_veg)
VALUES (9, 'Mango juice', 'drink', TRUE);

SELECT *
FROM menu;
