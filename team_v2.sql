create table if not exists chiefs (
	id serial primary key,
	employee_name varchar(40) not null,
	dept varchar(40) not null
);

create table if not exists team (
	id serial primary key,
	employee_name varchar(40) not null,
	dept varchar(40) not null unique,
	chief_id integer references chiefs(id)
);