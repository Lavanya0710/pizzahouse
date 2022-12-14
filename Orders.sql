create table orders(
row_id int PRIMARY KEY,
order_id varchar(10) not null,
created_at date not null,
item_id varchar(10) not null,
quantity int not null,
cust_id int not null,
delivery varchar(1) not null,
add_id int not null);


CREATE TABLE customer (
    cust_id int NOT NULL PRIMARY KEY,
    cust_firstname varchar(50) NOT NULL,
    cust_lastname varchar(50) NOT NULL
);

CREATE TABLE address (
add_id int NOT NULL PRIMARY KEY,
delivery_address1 varchar(200) NOT NULL,
delivery_address2 varchar(200),
delivery_city varchar(50) NOT NULL,
delivery_zipcode varchar(20) NOT NULL
);

CREATE TABLE item(
item_id varchar(10) NOT NULL PRIMARY KEY,
sku varchar(20) NOT NULL,
item_name varchar(100) NOT NULL,
item_cat varchar(100)NOT NULL,
item_size varchar(10)NOT NULL,
item_price number(10,2)NOT NULL
);

CREATE TABLE ingredient(
ing_id  varchar(10) NOT NULL PRIMARY KEY,
ing_name varchar(200)NOT NULL,
ing_weight int NOT NULL,
ing_meas varchar(20)NOT NULL,
ing_price NUMBER(8,2) NOT NULL
);

CREATE TABLE recipe(
row_id int PRIMARY KEY,
recipe_id varchar(20) NOT NULL,
ing_id varchar(10)NOT NULL,
quantity int NOT NULL
);

CREATE TABLE inventory(
inv_id int PRIMARY KEY,
item_id varchar(10)NOT NULL,
quantity int NOT NULL
);