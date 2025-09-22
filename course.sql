CREATE TABLE users (
	id serial primary key,
	username varchar( 32 ) unique
);

CREATE TABLE permissions (
	id serial primary key,
	u_id int REFERENCES users( id ),
	rights int
);

INSERT into users ( usename ) values ( "firdavs" );

CREATE TABLE permissions(
	id int,
	user_id int,
	rights int
);

-- role 1 = Normal user
-- role 2 = Content manager
-- role 3 = Admin
-- role 4 = Root


/*
	- USERS -
	id username
	1  firdavs
	2  asror

	- PERMISSIONS -
	id user_id  rights
	1  1 		1
	2  2 		1
	3  1 		2

	select * from permissions
	where user_id = 1 and right = 2;

	[]

	ACTION_1
	ACTION_2
	ACTION_3
*/
