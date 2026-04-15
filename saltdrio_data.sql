USE saltdrio_db;

INSERT INTO products (name, category, price, country_origin) VALUES
('T-Shirt Oversized', 'Clothing', 850, 'Bangladesh'),
('Drop Shoulder T-Shirt', 'Clothing', 950, 'Bangladesh'),
('Panjabi Cotton', 'Traditional', 1200, 'Bangladesh'),
('Women Sarri', 'Traditional', 1800, 'Bangladesh'),
('Sports Watch', 'Accessories', 1500, 'China'),
('Leather Notebook', 'Stationery', 350, 'China'),
('Ceramic Mug', 'Home', 450, 'China'),
('Hoodie Winter', 'Clothing', 2200, 'Bangladesh'),
('Shoulder Bag', 'Accessories', 1250, 'Bangladesh'),
('Sports T-Shirt', 'Sports', 750, 'China');

INSERT INTO customers (name, city, country, phone) VALUES
('Rahim Ahmed', 'Dhaka', 'Bangladesh', '017XXXXXXX'),
('Karim Hasan', 'Chittagong', 'Bangladesh', '018XXXXXXX'),
('Fatema Begum', 'Dhaka', 'Bangladesh', '019XXXXXXX'),
('Shamim Khan', 'Shanghai', 'China', '86XXXXXXX'),
('Li Wei', 'Beijing', 'China', '86XXXXXXXX'),
('Tahmina Akter', 'Rajshahi', 'Bangladesh', '017XXXXXXXX');

INSERT INTO sales (product_id, customer_id, quantity, sale_date, amount) VALUES
(1, 1, 2, '2024-04-01', 1700),
(2, 2, 1, '2024-04-02', 950),
(3, 3, 3, '2024-04-05', 3600),
(4, 3, 1, '2024-04-05', 1800),
(8, 1, 1, '2024-04-10', 2200),
(9, 6, 2, '2024-04-12', 2500),
(5, 4, 5, '2024-04-03', 7500),
(6, 4, 10, '2024-04-03', 3500),
(7, 5, 8, '2024-04-08', 3600),
(10, 5, 4, '2024-04-08', 3000),
(5, 4, 3, '2024-04-15', 4500);
