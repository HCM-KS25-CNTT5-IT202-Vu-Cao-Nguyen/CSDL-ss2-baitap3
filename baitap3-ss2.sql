CREATE DATABASE baitap3;
USE baitap3;


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    client_id VARCHAR(10) NOT NULL UNIQUE,
    total_amount DECIMAL(18,2) NOT NULL,
    order_date DATE DEFAULT (CURRENT_DATE)
);


CREATE TABLE customers (
    client_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);


ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (client_id)
REFERENCES customers(client_id);