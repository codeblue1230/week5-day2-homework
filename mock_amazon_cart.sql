CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  address VARCHAR(100),
  country VARCHAR(100),
  phone_number VARCHAR(20),
  email VARCHAR(50),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  start_date DATE,
  birthday DATE
);

CREATE TABLE Product (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  price NUMERIC(10,2),
  description VARCHAR(300),
  category VARCHAR(1000),
  discount NUMERIC(5,2),
  inventory INTEGER
);

CREATE TABLE Membership (
  membership_id SERIAL PRIMARY KEY,
  category VARCHAR(100),
  expiration_date DATE,
  fee_amount NUMERIC(5,2),
  customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id)
);

CREATE TABLE Cart (
  cart_Id SERIAL PRIMARY KEY,
  total_price NUMERIC(10,2),
  paid BOOLEAN,
  cart_date DATE,
  customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id)
);

CREATE TABLE Wish_List (
  list_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  total_price NUMERIC(10,2),
  product_id INTEGER,
	FOREIGN KEY (product_id)
      REFERENCES Product(product_id)
);

CREATE TABLE Order_History (
  order_id SERIAL PRIMARY KEY,
  returned  BOOLEAN,
  order_date TIMESTAMP,
  delivery_address VARCHAR(100),
  cart_id INTEGER,
	FOREIGN KEY (cart_id)
      REFERENCES Cart(cart_id)
);

CREATE TABLE Payment_Method (
  payment_id SERIAL PRIMARY KEY,
  card_type VARCHAR(50),
  billing_address VARCHAR(100),
  expiration_date VARCHAR(50),
  card_number VARCHAR(16),
  CVV VARCHAR(3),
  customer_id INTEGER,
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id)
);

CREATE TABLE product_cart (
  product_cart_id SERIAL PRIMARY KEY,
  product_id INTEGER,
  quantity INTEGER,
  cart_id INTEGER,
	FOREIGN KEY (cart_id)
      REFERENCES Cart(cart_id),
	FOREIGN KEY (product_id)
      REFERENCES Product(product_id)
);


CREATE TABLE customer_wish (
  customer_wish_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  list_id INTEGER,
	FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id),
	FOREIGN KEY (list_id)
      REFERENCES Wish_List(list_id)
);