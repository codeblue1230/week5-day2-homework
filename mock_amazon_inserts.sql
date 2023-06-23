-- DML (Data Manipulations Language) INSERT INTO commands

INSERT INTO Customer (
	address,
	country,
	phone_number,
	email,
	first_name,
	last_name,
	start_date,
	birthday
) VALUES (
	'123 Really Cool street',
	'USA',
	'(504)555-5555',
	'reallycoolhuman@gmail.com',
	'Alex',
	'Swiggum',
	CURRENT_DATE,
	'09/11/1991'
);

SELECT *
FROM Customer;

INSERT INTO Product (
	"name",
	price,
	description,
	category,
	discount,
	inventory
) VALUES (
	'bananas',
	2.99,
	'really awesome fruit. I like them a lost',
	'food',
	5.00,
	500
), (
	'pens',
	6.99,
	'Pens are great. especially really cool ones',
	'Office Supplies',
	0.00,
	1000
);

SELECT *
FROM Product;

ALTER TABLE Customer
ADD COLUMN middle_name VARCHAR(50);

SELECT *
FROM Customer

UPDATE Customer
SET middle_name = 'Renae'
WHERE customer_id = 1;

TRUNCATE TABLE Product CASCADE;
DROP TABLE Product CASCADE;

DELETE FROM Product
WHERE product_id = 2;