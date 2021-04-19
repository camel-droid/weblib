drop table if exists users cascade;
drop table if exists catalogue cascade;
drop table if exists books cascade;
drop table if exists lendings cascade;
drop table if exists categories cascade;
drop table if exists publishers cascade;

-- 分類マスタ
create table categories (
	code serial primary key,
	name varchar(10) not null
);

-- 出版社マスタ
create table publishers (
	code int not null unique primary key,
	name varchar(20) not null
);

create table users (
	id serial,
	name varchar(10) not null,
	zipcode char(8),
	address text,
	phone char(13),
	email varchar(100),
	birthday date,
--	password varchar(100) not null,
--	priviledge int not null,
	created_at timestamp not null default current_timestamp,
	erased_at timestamp
);

create table catalogue (
	id serial,
	isbn char(13) not null,
	category_code int,
	publisher_code int,
	title varchar(100) not null,
	author varchar(20),
	publish_at date,
	create_at timestamp not null default current_timestamp
);

create table books (
	id serial,
	code varchar(5),
	isbn char(13) not null,
	arrival_at date not null default current_date,
	disposal_at date,
	description text
);

create table lendings (
	id serial,
	book_id int not null,
	user_id int not null,
	lend_at date not null default current_date,
	deadline date not null,
	return_at date,
	description text
);

alter table users add primary key (id);
alter table catalogue add primary key (id);
alter table catalogue add foreign key (category_code) references categories(code);
alter table catalogue add foreign key (publisher_code) references publishers(code);
alter table books add primary key (id);
alter table lendings add primary key (id);

create index idx_users_erased on users(erased_at);
create index idx_books_disposal on books(disposal_at);

create index idx_lendings_lend on lendings(lend_at);
create index idx_lendings_deadline on lendings(deadline);
create index idx_lendings_return on lendings(return_at);


