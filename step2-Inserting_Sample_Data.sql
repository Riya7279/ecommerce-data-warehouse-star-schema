INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 1, 2024),
(2, '2024-01-02', 2, 1, 2024),
(3, '2024-01-03', 3, 1, 2024),
(4, '2024-01-04', 4, 1, 2024),
(5, '2024-01-05', 5, 1, 2024),
(6, '2024-02-01', 1, 2, 2024),
(7, '2024-02-02', 2, 2, 2024),
(8, '2024-02-03', 3, 2, 2024),
(9, '2024-03-01', 1, 3, 2024),
(10, '2024-03-02', 2, 3, 2024);

INSERT INTO dim_customer VALUES
(101, 'Riya', 'Patna', 'Bihar'),
(102, 'Amit', 'Delhi', 'Delhi'),
(103, 'Neha', 'Mumbai', 'Maharashtra'),
(104, 'Rahul', 'Kolkata', 'West Bengal'),
(105, 'Priya', 'Bangalore', 'Karnataka'),
(106, 'Arjun', 'Chennai', 'Tamil Nadu'),
(107, 'Sneha', 'Hyderabad', 'Telangana'),
(108, 'Vikas', 'Pune', 'Maharashtra'),
(109, 'Anjali', 'Jaipur', 'Rajasthan'),
(110, 'Karan', 'Lucknow', 'UP');

INSERT INTO dim_product VALUES
(201, 'Laptop', 'Electronics', 50000),
(202, 'Phone', 'Electronics', 20000),
(203, 'Tablet', 'Electronics', 30000),
(204, 'Headphones', 'Accessories', 2000),
(205, 'Smart Watch', 'Accessories', 5000),
(206, 'Camera', 'Electronics', 45000),
(207, 'Printer', 'Electronics', 15000),
(208, 'Keyboard', 'Accessories', 1500),
(209, 'Mouse', 'Accessories', 800),
(210, 'Monitor', 'Electronics', 12000);

INSERT INTO dim_store VALUES
(301, 'Store A', 'Patna'),
(302, 'Store B', 'Delhi'),
(303, 'Store C', 'Mumbai'),
(304, 'Store D', 'Kolkata'),
(305, 'Store E', 'Bangalore'),
(306, 'Store F', 'Chennai'),
(307, 'Store G', 'Hyderabad'),
(308, 'Store H', 'Pune'),
(309, 'Store I', 'Jaipur'),
(310, 'Store J', 'Lucknow');

INSERT INTO fact_sales VALUES
(1, 1, 101, 201, 301, 1, 50000),
(2, 2, 102, 202, 302, 2, 40000),
(3, 3, 103, 203, 303, 1, 30000),
(4, 4, 104, 204, 304, 3, 6000),
(5, 5, 105, 205, 305, 2, 10000),
(6, 6, 106, 206, 306, 1, 45000),
(7, 7, 107, 207, 307, 1, 15000),
(8, 8, 108, 208, 308, 4, 6000),
(9, 9, 109, 209, 309, 5, 4000),
(10, 10, 110, 210, 310, 2, 24000);