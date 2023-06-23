SELECT *
FROM Customers

SELECT *
FROM Concessions

SELECT *
FROM Invoice

SELECT *
FROM Movies

SELECT *
FROM Tickets

INSERT INTO Customers (
    email,
	first_name,
	last_name,
	birthday
) VALUES (
	'randomranderson@gmail.com',
    'Random',
	'Randerson',
	'1998-12-30'
);

INSERT INTO Customers (
    email,
	first_name,
	last_name,
	birthday
) VALUES (
	'sampleman@yahoo.com',
    'Sample',
	'Man',
	'1958-04-25'
);

INSERT INTO Concessions (
    food,
    drinks,
    candy,
	customer_id
) VALUES (
	'popcorn',
	'soda',
	'whoppers',
	1
), (
	'hot dog',
	'water',
	'whoppers',
	2
);

INSERT INTO Tickets (
    venue_name,
    date_,
	time_,
    theater_number,
    adult_child,
	customer_id
) VALUES (
  	'AMC',
  	'2023-06-22',
	'20:30:00',
	8,
    'adult',
	1
), (
	'IMAX',
	'2023-07-23',
	'18:00:00',
	3,
	'adult',
	2
);

INSERT INTO Movies (
    movie_name,
    available_seats,
    duration,
    rating,
	ticket_id
) VALUES (
    'Star Wars Return of The Jedi',
    54,
    '2 hours',
    'PG',
	1
), (
    'Lord of The Rings: The Two Towers',
    26,
    '3 hours and 30 minutes',
    'PG-13',
	2
);

INSERT INTO Invoice (
    total_price,
    discount,
    credit,
    cash,
	customer_id,
	ticket_id,
	concessions_id
) VALUES (
    60.59,
    0,
    True,
    False,
	1,
	1,
	2
), (
	45.11,
	15,
	False,
	True,
	2,
	2,
	3
);
