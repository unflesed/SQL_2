create database myDBs;
use myDBs;

-- Один ко многим
create table candidates
(	id int auto_increment Not null,
	name varchar(30) not null,
    patronymic varchar(30) not null,
    primary key(id)
    );
    
create table people
(	id int auto_increment Not null,
	name varchar(30) not null,
    patronymic varchar(30) not null,
    candidates_id int,
    foreign key (candidates_id) references candidates(id), 
    primary key(id)
    );

insert into candidates
(name, patronymic)
values
('Vasiliy', 'Ivanovich');   

insert into candidates
(name, patronymic)
values
('Ivan', 'Ivanovich');  

insert into people
(name, patronymic, candidates_id)
values
('Vasiliy', 'Vasilevich', 1);  

insert into people
(name, patronymic, candidates_id)
values
('Valentin', 'Vasilevich', 2);  

insert into people
(name, patronymic, candidates_id)
values
('Valentin', 'Valentinovich', 2);  

select * from people;
select * from candidates;

-- Один к одному
create table cars
(	id int auto_increment Not null,
	mark varchar(30) not null,
    speed int not null,
    driver_id int unique,
    foreign key (driver_id) references drivers(id), 
    primary key(id)
    );
    
create table drivers
(	id int auto_increment Not null,
	name varchar(30) not null,
    surname varchar(30) not null,
    primary key(id)
    );

insert into cars
(mark, speed, driver_id)
values
('BMW', '220', 1);   

insert into cars
(mark, speed, driver_id)
values
('VW', '200', 2);

insert into drivers
(name, surname)
values
('Ivan', 'Ivanov');    

insert into drivers
(name, surname)
values
('Vasya', 'Pupkin'); 
    
select * from cars;
select * from drivers; 

-- Многие ко многим

create table products
(	id int auto_increment Not null,
	product varchar(30) not null, 
    primary key(id)
    );
    
create table customers
(	id int auto_increment Not null,
	name varchar(30) not null,
    surname varchar(30) not null,
    primary key(id)
    ); 
    
create table productsCustomers
(	products_id int Not null,
	customers_id int not null,
    foreign key (products_id) references products(id),
    foreign key (customers_id) references customers(id),
    primary key(products_id, customers_id)
    ); 
    
insert into products
(product)
values
('Soap'); 

insert into products
(product)
values
('gel'); 

insert into products
(product)
values
('powder');

insert into customers
(name, surname)
values
('Ivan', 'Ivanov');    

insert into customers
(name, surname)
values
('Vasya', 'Pupkin'); 

insert into customers
(name, surname)
values
('Vasya', 'Utkin'); 

insert into productsCustomers
(products_id, customers_id)
values
(1, 1); 

insert into productsCustomers
(products_id, customers_id)
values
(1, 2); 

insert into productsCustomers
(products_id, customers_id)
values
(2, 1); 

insert into productsCustomers
(products_id, customers_id)
values
(3, 3); 

insert into productsCustomers
(products_id, customers_id)
values
(3, 2); 

select * from products;
select * from customers; 
select * from productsCustomers; 
 
