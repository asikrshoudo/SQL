CREATE DATABASE IF NOT EXISTS saltdrio_db;
USE saltdrio_db;


CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    country_origin VARCHAR(50)
);


CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    phone VARCHAR(20)
);

-- Sales table
CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    customer_id INT,
    quantity INT,
    sale_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
