create database warehouse;
use warehouse;

create table providers
(	id int auto_increment Not null,
	name varchar(30) not null,
    country varchar(30) not null,
    category varchar(30) not null,
    primary key(id)
    );
    
create table customers
(	id int auto_increment Not null,
	name varchar(30) not null,
    phone varchar(30) not null,
    adress varchar(30) not null,
    primary key(id)
    );
    
create table staff
(	id int auto_increment Not null,
	name varchar(30) not null,
    surname varchar(30) not null,
    post varchar(30) not null,
    providers_id int not null,
    customers_id int not null,
    foreign key (providers_id) references providers(id), 
    foreign key (customers_id) references customers(id), 
    primary key(id)
    );
    
insert into providers
(name, country, category)
values
('Danone', 'Russia', 'dairy products'); 

insert into customers
(name, phone, adress)
values
('Vasya', '+34232443242', 'Pushkinskaya st.'); 

insert into customers
(name, phone, adress)
values
('Ivan', '+1232443242', 'Lenina st.');

insert into customers
(name, phone, adress)
values
('Petya', '+2232443242', 'Shevchenko st.');

insert into staff
(name, surname, post, providers_id, customers_id)
values
('Vasya', 'Pupkin', 'specialist', 1, 1);

insert into staff
(name, surname, post, providers_id, customers_id)
values
('Ivan', 'Ivanov', 'specialist', 1, 2);

insert into staff
(name, surname, post, providers_id, customers_id)
values
('Vasya', 'Pupkin', 'specialist', 1, 3);

select * from providers;
select * from customers;
select * from staff;