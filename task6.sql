CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    product_id INT NOT NULL
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
-- Jan 2023
(1, '2023-01-05', 100.00, 101),
(2, '2023-01-15', 150.00, 102),
(3, '2023-01-25', 200.00, 101),

-- Feb 2023
(4, '2023-02-02', 120.00, 103),
(5, '2023-02-18', 180.00, 104),

-- Mar 2023
(6, '2023-03-10', 250.00, 101),
(7, '2023-03-22', 300.00, 105),

-- Jan 2024
(8, '2024-01-12', 130.00, 102),
(9, '2024-01-20', 170.00, 104),

-- Feb 2024
(10, '2024-02-05', 200.00, 103),
(11, '2024-02-25', 220.00, 101),

-- Mar 2024
(12, '2024-03-01', 190.00, 105),
(13, '2024-03-15', 210.00, 104),

-- Apr 2024
(14, '2024-04-10', 180.00, 101),
(15, '2024-04-18', 220.00, 103);

SELECT
  EXTRACT(YEAR FROM order_date) AS order_year,
  EXTRACT(MONTH FROM order_date) AS order_month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS monthly_order_volume
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
