CREATE TABLE car (
  car_id serial unique,
  serial_number serial unique,
  make  varchar(50),
  model varchar(50),
  color varchar(50),
  car_year varchar(50)
);

CREATE TABLE customer (
  customer_id serial unique,
  first_name varchar(50),
  last_name varchar(50),
  address varchar(50),
  city varchar(50),
  sate varchar(50),
  postal_code varchar(50),
  phone_number varchar(50)
);

CREATE TABLE salesperson (
  salesperson_id serial primary key,
  first_name varchar(50),
  last_name varchar(50)
);

CREATE TABLE customer (
  customer_id serial primary key,
  first_name varchar(50),
  last_name varchar(50),
  address varchar(50),
  city varchar(50),
  state varchar(50),
  postal_code varchar(50),
  phone_number varchar(50)
);

CREATE TABLE invoice (
  invoice_number serial primary key,
  date_added date default current_date,
  car_id int,
  salesperson_id int,
  customer_id int,
  foreign key(car_id) references car(car_id),
  foreign key(salesperson_id) references salesperson(salesperson_id),
  foreign key(customer_id) references customer(customer_id)
);

CREATE TABLE mechanic (
  mechanic_id serial primary key,
  first_name varchar(50),
  last_name varchar(50)
);

CREATE TABLE service (
  service_id serial primary key,
  service_name varchar(50),
  hourly_rate float
);

CREATE TABLE parts (
  parts_id serial primary key,
  part_name varchar(50),
  description  varchar(50),
  purchase_price float,
  retail_price float 
);

CREATE TABLE service_ticket (
  serviceticket_id serial primary key,
  serviceticket_number varchar(50),
  car_id int,
  customer_id int,
  date_received date default current_date,
  service_comments varchar(50),
  date_returned date, 
  foreign key(car_id) references car(car_id),
  foreign key(customer_id) references customer(customer_id)
);

CREATE TABLE parts_used (
  partsused_id serial primary key,
  parts_id int, 
  serviceticket_id int,
  price float,
  foreign key(parts_id) references parts(parts_id),
  foreign key(serviceticket_id) references service_ticket(serviceticket_id)
 );
  

insert into car(car_id, make, model, color, car_year)
values('1', 'Ford', 'Mustang', 'Silver', '2018');

insert into car(car_id, make, model, color, car_year)
values('2', 'Ford', 'Mustang', 'Blue', '2018');

insert into car(car_id, make, model, color, car_year)
values('3', 'Ford', 'Mustang', 'Charcoal', '2018');

insert into car(car_id, make, model, color, car_year)
values('4', 'Ford', 'Mustang', 'Black', '2018');

insert into customer(customer_id, first_name, last_name, address, city, state, postal_code, phone_number)
values('1', 'Jon', 'Chagolla', '2120 W Victoria Ave', 'Montebello', 'CA', '90640', '0000000');
