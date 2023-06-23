CREATE TABLE Customers (
  customer_id SERIAL PRIMARY KEY,
  email VARCHAR(100),
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  birthday DATE
);

CREATE TABLE Movies (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(100),
  available_seats INTEGER,
  duration VARCHAR(25),
  rating VARCHAR(5),
  ticket_id INTEGER NOT NULL,
  FOREIGN KEY (ticket_id) 
	REFERENCES Tickets(ticket_id)
);

CREATE TABLE Tickets (
  ticket_id SERIAL PRIMARY KEY,
  venue_name VARCHAR(100),
  date_ DATE,
  time_ TIME,
  theater_number INTEGER,
  adult_child VARCHAR(5),
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) 
	REFERENCES Customers(customer_id)
);

CREATE TABLE Concessions (
  concessions_id SERIAL PRIMARY KEY,
  food VARCHAR(25),
  drinks VARCHAR(25),
  candy VARCHAR(25),
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) 
	REFERENCES Customers(customer_id)
);

CREATE TABLE Invoice (
  invoice_id SERIAL PRIMARY KEY,
  total_price NUMERIC(7,2),
  discount NUMERIC(5,2),
  credit BOOLEAN,
  cash BOOLEAN,
  customer_id INTEGER NOT NULL,
  ticket_id INTEGER NOT NULL,
  concessions_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) 
	REFERENCES Customers(customer_id),
  FOREIGN KEY (ticket_id) 
	REFERENCES Tickets(ticket_id),
  FOREIGN KEY (concessions_id) 
	REFERENCES Concessions(concessions_id)
);
