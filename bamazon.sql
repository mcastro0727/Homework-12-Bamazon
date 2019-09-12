DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	item_id VARCHAR(30),
	product_name VARCHAR(30),
	department_name VARCHAR (30),
	price INTEGER (30),
    stock_quantity INTEGER (30)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item1", "basketball", "Sporting Goods", 20, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item2", "tennis racquet", "Sporting Goods", 75, 15);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item3", "guitar", "Instruments", 300, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item4", "piano", "Instruments", 5000, 3);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item5", "TV", "Electronics", 500, 8);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item6", "blu-ray player", "Electronics", 150, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item7", "XBOX ONE", "Electronics", 250, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item8", "Tide Pods", "Cleaning", 15, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item9", "Swiffer Wet Jet", "Cleaning", 20, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Item10", "Mercedes Benz AMG GT Roadster", "Things You Can't Afford", 125000, 1);
