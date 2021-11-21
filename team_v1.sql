create table if not exists team (
	id serial primary key,
	employee_name varchar(40) not null,
	dept varchar(40) not null,
	chief_status boolean not null,
	chief_id integer references team(id) check(chief_id != id)
);