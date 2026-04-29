create DATABASE ecommerce_star_schema;
USE ecommerce_star_schema;

CREATE TABLE dim_date(
    date_id int PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    year INt
);

CREATE TABLE dim_customer(
    customer_id INT PRIMARY KEY,
    name        VARCHAR(50),
    city        VARCHAR(50),
    state       VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE fact_sales(
     sale_id INT PRIMARY KEY,
     date_id INT,
     customer_id INT,
     product_id  INT,
     store_id    INT,
     quantity    INT,
     total_amount DECIMAL(10,2),
     FOREIGN KEY(date_id) REFERENCES dim_date(date_id),
	 FOREIGN KEY(customer_id) REFERENCES dim_customer(customer_id),
	 FOREIGN KEY(product_id) REFERENCES dim_product(product_id),
     FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
); 