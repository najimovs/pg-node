-- SHOW ALL DATABASES
SELECT datname as name FROM pg_database;

-- CREATE NEW DATABAE
CREATE DATABASE my_app;

-- DROP DATABASE
DROP DATABASE my_app;

-- CREATE TABLE
CREATE TABLE students (
	id int,
	name varchar( 32 ),
	class int,
	age int,
	c_type varchar(1)
);

INSERT into students
( id, name, class, age, c_type, gender ) values
( 1, "andrew", 5, 25, "A", "m" );

-- alter table students add gender varchar(1);

-- SELECT ALL DATA FROM TABLE
select * from users;

-- SELECT SPECIFIC COLUMNS FROM TABLE
select id, username from users;

-- INSERT SINGLE DATA (ROW) TO TABLE
INSERT INTO
	users ( age )
VALUES
	( 22 )
;

-- INSERT MULTIPLE DATA (ROWS) TO TABLE
INSERT INTO
	users ( id, username, gender )
VALUES
	( 1, 'najimov', true ),
	( 2, 'firdavs', true ),
	( 3, 'alisher', true ),
	( 4, 'javohir', true ),
	( 5, 'asror', true ),
	( 6, 'zarnigor', false ),
	( 7, 'dilfuzaxon', false ),
	( 8, 'muhammadrahim', true )
;
