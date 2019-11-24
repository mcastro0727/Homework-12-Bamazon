DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	item_id INTEGER AUTO_INCREMENT NOT NULL,
	product_name VARCHAR (30),
	department_name VARCHAR (30),
	price INTEGER (30),
    stock_quantity INTEGER (30),
	PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("basketball", "Sporting Goods", 20, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("tennis racquet", "Sporting Goods", 75, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("guitar", "Instruments", 300, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("piano", "Instruments", 5000, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("TV", "Electronics", 500, 8);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("blu-ray player", "Electronics", 150, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("XBOX ONE", "Electronics", 250, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tide Pods", "Cleaning", 15, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Swiffer Wet Jet", "Cleaning", 20, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mercedes Benz AMG GT Roadster", "Things You Can't Afford", 125000, 1);
