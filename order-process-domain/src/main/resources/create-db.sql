CREATE SCHEMA op;
 
CREATE TABLE op.orders (orderId varchar(50) NOT NULL, 
item varchar(50), 
customerRef varchar(50),
quantity INTEGER,
orderStatus varchar(25),
orderDate Date,
CONSTRAINT order_primary_key PRIMARY KEY (orderId));



CREATE TABLE op.inventory (itemId INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 5, INCREMENT BY 1), 
item varchar(50), 
category varchar(50),
quantity INTEGER,
price INTEGER,
manufacturedDate Date,
expiryDate Date,
supplierName varchar(60),
madeInCountry varchar(50),
CONSTRAINT item_primary_key PRIMARY KEY (itemId));
