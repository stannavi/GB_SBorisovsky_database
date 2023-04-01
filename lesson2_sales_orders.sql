DROP DATABASE IF EXISTS lesson2_homework;
CREATE DATABASE IF NOT EXISTS lesson2_homework;
USE lesson2_homework;

CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date VARCHAR(30) NOT NULL,
    count_product INT NOT NULL
);

INSERT sales(order_date, count_product) 
VALUES
	("2022-01-01", 156),
    ("2022-01-02", 180),
    ("2022-01-03", 21),
    ("2022-01-04", 124),
    ("2022-01-05", 341);
    
SELECT *
FROM sales;

SELECT 
	id as "id заказа",
    IF(count_product < 100, "Маленький заказ", 
		IF(count_product BETWEEN 100 AND 300, "Средний заказ", "Большой заказ"))
	AS "Тип заказа"
FROM sales;


CREATE TABLE IF NOT EXISTS orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(30) NOT NULL,
    amount DECIMAL(6,2) NOT NULL,
    order_status VARCHAR(45)
);

INSERT orders(employee_id, amount, order_status)
VALUES 
	("e03", 15.00, "OPEN"),
    ("e01", 25.50, "OPEN"),
    ("e05", 100.70, "CLOSED"),
    ("e02", 22.18, "OPEN"),
    ("e04", 9.50, "CANCELLED");
    
SELECT id, employee_id, amount, order_status,
CASE
	WHEN order_status = "OPEN" THEN "Order is in open state"
    WHEN order_status = "CLOSED" THEN "Order is closed"
    WHEN order_status = "CANCELLED" THEN "Order is cancelled"
END AS full_order_status
FROM orders;
    