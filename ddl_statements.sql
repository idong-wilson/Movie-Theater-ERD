-- DDL (Data Definition language) statements
CREATE TABLE customer(
	customer_id serial PRIMARY KEY,
	first_name varchar(35) NOT null,
	last_name varchar(35) NOT null,
	email varchar(50),
	address varchar(70),
	loyalty_member BOOLEAN DEFAULT False
);

CREATE TABLE ticket(
	ticket_id integer PRIMARY KEY,
	customer_id integer,
	-- syntax: Foreign key(column_in_domestic_table) refrencing foreign_table_name(col_in_foreign_table)
	FOREIGN key(customer_id) REFERENCES customer(customer_id),
	order_date timestamp
);


--create order-movie table with foreign key
CREATE TABLE order_movie(
	order_id serial,
	movie_id integer,
	-- syntax: Foreign key(column_in_domestic_table) refrencing foreign_table_name(col_in_foreign_table)
	FOREIGN key(ticket_id) REFERENCES ticket(ticket_id),
	FOREIGN key(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE theater(
theater_id serial NOT null,
name varchar(35) NOT null,
email varchar(50),
address varchar(70),
phone_number integer
);

CREATE TABLE movie(
	movie_id serial,
	movie_name varchar(35),
	description varchar(100),
	price integer,
	theater_id integer,
	genre_id integer
);

CREATE TABLE genre(
	genre_id serial PRIMARY KEY,
	name varchar(35),
	rating varchar(6)
);

SELECT *
FROM customer;

--alter table table_name rename to new_name
ALTER TABLE genre RENAME TO category;

-- Insert customers' info customer table
INSERT INTO customer(
	customer_id,	
	first_name,
	last_name,
	email,
	address,
	loyalty_member)
values(
	'13243',
	'Daniel',
	'Brown',
	'dannyb@xyz.com',
	'243 Nobody Lane, Charlie, Newfoundland, USA',
	'False'	
	);

INSERT INTO customer(
	customer_id,	
	first_name,
	last_name,
	email,
	address,
	loyalty_member)
values(
	'13244',
	'Mary',
	'Parker',
	'parkerm@ttz.com',
	'43 mind Yours street, Addel, Georgia, USA',
	'True'	
	);

INSERT INTO customer(
	customer_id,	
	first_name,
	last_name,
	email,
	address,
	loyalty_member)
values(
	'13245',
	'Donna',
	'Newman',
	'dmann@xyz.com',
	'6473 You Cant See Me Drive, Joshua, Texas, USA',
	'True'	
	);

INSERT INTO customer(
	customer_id,	
	first_name,
	last_name,
	email,
	address,
	loyalty_member)
values(
	'145',
	'Annette',
	'Marcus',
	'netty33@mybiz.com',
	'7793 It Is For Real Bvd, Fort Main, Alabama, USA',
	'False'	
	);

SELECT *
FROM movie;

-- insert data into movie table
INSERT INTO movie(
	movie_id,	
	movie_name,
	description,
	price,
	theater_id,
	genre_id)
values(
	'101',
	'Inception',
	'A thief who steals corporate secrets through the use of dream',
	'10',
	'1313',
	'13'	
	);


INSERT INTO movie(
	movie_id,	
	movie_name,
	description,
	price,
	theater_id,
	genre_id)
values(
	'177',
	'Peter Pan',
	'Wendy and her brothers are whisked away to the magical world',
	'10',
	'1313',
	'1'	
	);

INSERT INTO movie(
	movie_id,	
	movie_name,
	description,
	price,
	theater_id,
	genre_id)
values(
	'122',
	'Desperado',
	'Former musician and gunslinger El Mariachi arrives',
	'12',
	'1313',
	'13'	
	);

INSERT INTO movie(
	movie_id,	
	movie_name,
	description,
	price,
	theater_id,
	genre_id)
values(
	'122',
	'Lawrence of Arabia',
	'The story of T.E. Lawrence, the English officer who successfully united and led the diverse',
	'8',
	'1313',
	'4'	
	);

-- remove TABLE completely
DROP TABLE orger_movie;








