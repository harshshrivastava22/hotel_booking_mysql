create table hotels (
  hotel_id int primary key,
  name varchar(100),
  city varchar(50),
  category VARCHAR(20)
);


 desc hotels;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| hotel_id | int          | NO   | PRI | NULL    |       |
| name     | varchar(100) | YES  |     | NULL    |       |
| city     | varchar(50)  | YES  |     | NULL    |       |
| category | varchar(20)  | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+



INSERT INTO hotels (hotel_id, name, city, category) VALUES
(1, 'grand palace', 'New yourk', '5-star'),
(2, 'ocean view resort', 'miami', '4-star'),
(3, 'mountaion retreat', 'Denver', '3-star'),
(4, 'city lights inn', 'los angeles', '4-star'),
(5, 'royal heritage inn', 'London', '5-star'),
(6, 'desert hotel', 'Dubai', '5-star'),
(7, 'sunset hotel', 'Sydney', '4-star'),
(8, 'Urban Stay', 'tokyo', '3-star'),
(9, 'the green paradise', 'Toronto', '4-star'),
(10, 'Lakeview Lodge', 'Zurich', '4-star');

select * from hotels;
+----------+--------------------+-------------+----------+
| hotel_id | name               | city        | category |
+----------+--------------------+-------------+----------+
|        1 | grand palace       | New yourk   | 5-star   |
|        2 | ocean view resort  | miami       | 4-star   |
|        3 | mountaion retreat  | Denver      | 3-star   |
|        4 | city lights inn    | los angeles | 4-star   |
|        5 | royal heritage inn | London      | 5-star   |
|        6 | desert hotel       | Dubai       | 5-star   |
|        7 | sunset hotel       | Sydney      | 4-star   |
|        8 | Urban Stay         | tokyo       | 3-star   |
|        9 | the green paradise | Toronto     | 4-star   |
|       10 | Lakeview Lodge     | Zurich      | 4-star   |
+----------+--------------------+-------------+----------+


create table customers (
  cust_id int primary key,
  name varchar(100),
  gender char(1),
  country varchar(50)
);

desc customers;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| cust_id | int          | NO   | PRI | NULL    |       |
| name    | varchar(100) | YES  |     | NULL    |       |
| gender  | char(1)      | YES  |     | NULL    |       |
| country | varchar(50)  | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+


INSERT INTO customers (cust_id, name, gender, country) VALUES
(1, 'John Smith', 'M', 'USA'),
(2, 'Maria Garcia', 'F', 'Spain'),
(3, 'David Chen', 'M', 'China'),
(4, 'Sarah Lee', 'F', 'UK'),
(5, 'Michael Brown', 'M', 'Australia'),
(6, 'Emma Wilson', 'F', 'Canada'),
(7, 'Ahmed Ali', 'M', 'UAE'),
(8, 'Anna Müller', 'F', 'Germany'),
(9, 'Raj Patel', 'M', 'India'),
(10, 'Sophia Rossi', 'F', 'Italy');


select * from customers;
+---------+---------------+--------+-----------+
| cust_id | name          | gender | country   |
+---------+---------------+--------+-----------+
|       1 | John Smith    | M      | USA       |
|       2 | Maria Garcia  | F      | Spain     |
|       3 | David Chen    | M      | China     |
|       4 | Sarah Lee     | F      | UK        |
|       5 | Michael Brown | M      | Australia |
|       6 | Emma Wilson   | F      | Canada    |
|       7 | Ahmed Ali     | M      | UAE       |
|       8 | Anna Müller   | F      | Germany   |
|       9 | Raj Patel     | M      | India     |
|      10 | Sophia Rossi  | F      | Italy     |
+---------+---------------+--------+-----------+

create table bookings (
  booking_id int primary key,
  hotel_id int,
  cust_id int,
  checkin_date date,
  checkout_date date,
  total_amount decimal(10,2),
  room_type varchar(50),
  foreign key (hotel_id) references hotels(hotel_id),
  foreign key (cust_id) references customers(cust_id)
);

desc bookings;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| booking_id    | int           | NO   | PRI | NULL    |       |
| hotel_id      | int           | YES  | MUL | NULL    |       |
| cust_id       | int           | YES  | MUL | NULL    |       |
| checkin_date  | date          | YES  |     | NULL    |       |
| checkout_date | date          | YES  |     | NULL    |       |
| total_amount  | decimal(10,2) | YES  |     | NULL    |       |
| room_type     | varchar(50)   | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+

INSERT INTO bookings (booking_id, hotel_id, cust_id, checkin_date, checkout_date, total_amount, room_type) VALUES
(1, 1, 1, '2025-01-10', '2025-01-15', 1500.00, 'Suite'),
(2, 2, 2, '2025-02-05', '2025-02-10', 900.00, 'Double'),
(3, 3, 3, '2025-03-12', '2025-03-16', 600.00, 'Single'),
(4, 4, 4, '2025-04-20', '2025-04-25', 1100.00, 'Double'),
(5, 5, 5, '2025-05-01', '2025-05-07', 2500.00, 'Suite'),
(6, 6, 6, '2025-06-15', '2025-06-18', 1800.00, 'Deluxe'),
(7, 7, 7, '2025-07-05', '2025-07-10', 950.00, 'Double'),
(8, 8, 8, '2025-08-20', '2025-08-24', 780.00, 'Single'),
(9, 9, 9, '2025-09-10', '2025-09-15', 1200.00, 'Suite'),
(10, 10, 10, '2025-10-01', '2025-10-06', 1600.00, 'Deluxe');

select * from bookings;
+------------+----------+---------+--------------+---------------+--------------+-----------+
| booking_id | hotel_id | cust_id | checkin_date | checkout_date | total_amount | room_type |
+------------+----------+---------+--------------+---------------+--------------+-----------+
|          1 |        1 |       1 | 2025-01-10   | 2025-01-15    |      1500.00 | Suite     |
|          2 |        2 |       2 | 2025-02-05   | 2025-02-10    |       900.00 | Double    |
|          3 |        3 |       3 | 2025-03-12   | 2025-03-16    |       600.00 | Single    |
|          4 |        4 |       4 | 2025-04-20   | 2025-04-25    |      1100.00 | Double    |
|          5 |        5 |       5 | 2025-05-01   | 2025-05-07    |      2500.00 | Suite     |
|          6 |        6 |       6 | 2025-06-15   | 2025-06-18    |      1800.00 | Deluxe    |
|          7 |        7 |       7 | 2025-07-05   | 2025-07-10    |       950.00 | Double    |
|          8 |        8 |       8 | 2025-08-20   | 2025-08-24    |       780.00 | Single    |
|          9 |        9 |       9 | 2025-09-10   | 2025-09-15    |      1200.00 | Suite     |
|         10 |       10 |      10 | 2025-10-01   | 2025-10-06    |      1600.00 | Deluxe    |
+------------+----------+---------+--------------+---------------+--------------+-----------+

