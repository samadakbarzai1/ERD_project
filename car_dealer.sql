CREATE TABLE Customer (
  customer_id SERIAL,
  firstname VARCHAR(60),
  lastname VARCHAR(60),
  PRIMARY KEY (customer_id)
);

CREATE TABLE Salesman (
  salesman_id SERIAL,
  firstname VARCHAR(60),
  lastname VARCHAR(60),
  PRIMARY KEY (salesman_id)
);

CREATE TABLE car (
  car_id SERIAL,
  model VARCHAR(60),
  types VARCHAR(60),
  color INTEGER,
  cost NUMERIC(10,3),
  PRIMARY KEY (car_id)
);

CREATE TABLE Invoice (
  invoice_id SERIAL,
  customer_id INTEGER,
  salesman_id INTEGER,
  car_id INTEGER,
  PRIMARY KEY (invoice_id),
  CONSTRAINT "FK_Invoice.customer_id"
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id),
  CONSTRAINT "FK_Invoice.salesman_id"
    FOREIGN KEY (salesman_id)
      REFERENCES Salesman(salesman_id),
  CONSTRAINT "FK_Invoice.car_id"
    FOREIGN KEY (car_id)
      REFERENCES car(car_id)
);

CREATE TABLE Mechanic (
  mech_id SERIAL,
  firstname VARCHAR(60),
  lastname VARCHAR(60),
  PRIMARY KEY (mechanic_id)
);

CREATE TABLE Parts (
  part_id SERIAL,
  part_name VARCHAR(60),
  part_cost NUMERIC(5,3),
  PRIMARY KEY (part_id)
);

CREATE TABLE Service_Ticket (
  service_id SERIAL,
  customer_id INTEGER,
  mech_id INTEGER,
  car_id INTEGER,
  part_id INTEGER,
  service_cost NUMERIC(5,3),
  PRIMARY KEY (repair_id),
  CONSTRAINT "FK_Service_Ticket.customer_id"
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id),
  CONSTRAINT "FK_Service_Ticket.mechanic_id"
    FOREIGN KEY (mechanic_id)
      REFERENCES Mechanic(mech_id),
  CONSTRAINT "FK_Service_Ticket.part_id"
    FOREIGN KEY (part_id)
      REFERENCES Parts(part_id),
  CONSTRAINT "FK_Service_Ticket.car_id"
    FOREIGN KEY (car_id)
      REFERENCES car(car_id)
);


-- Initial Value Insertion --
INSERT INTO Customer(
	customer_id,
	firstname,
	lastname
)
VALUES(
	1,
	'samad',
	'akbarzai'
);

INSERT INTO car(
	car_id,
	model,
	types,
	color,
	cost
)
VALUES(
	1,
	'bmw',
	's7',
	2020,
	'black',
    32000.50
);


INSERT INTO salesman(
	salesman_id,
	firstname,
	lastname
)
VALUES(
	1,
	'mee',
	'Peee'
);


INSERT INTO mechanic(
	mech_id,
	firstname,
	lastname
					
)
VALUES(
	1,
	'lee',
	'james'
);


INSERT INTO invoice(
	invoice_id,
	customer_id,
	salesman_id,
	car_id
	
)
VALUES(
	1,
	1,
	1,
	1
);

INSERT INTO parts(
	part_id,
	part_name,
	part_cost
	
)

VALUES(
	1,
	'clynder',
	200	
);

INSERT INTO service_ticket(
	service_id,
	customer_id,
	mech_id,
	part_id,
	car_id,
    service_cost
)
VALUES(
	1,
	1,
	1,
	1,
	1,
	1000.00
);



