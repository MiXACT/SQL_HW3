CREATE TABLE IF NOT EXISTS depts (
	id serial PRIMARY KEY,
	dept varchar(40) NOT NULL UNIQUE 
);

CREATE TABLE IF NOT EXISTS chiefs (
	id serial PRIMARY KEY,
	employee_name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS team (
	id serial PRIMARY KEY,
	employee_name varchar(40) NOT NULL,
	dept_id integer REFERENCES depts(id),
	chief_id integer REFERENCES chiefs(id)
);