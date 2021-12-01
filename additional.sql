create database HRdepartment;
use HRdepartment;

create table workingInfo
(	id int auto_increment Not null,
	name varchar(30) not null,
    surname varchar(30) not null,
    education varchar(30) not null,
    info_id int unique,
    departments_id int,
    positions_id int,
    foreign key (info_id) references info(id), 
    foreign key (departments_id) references departments(id), 
    foreign key (positions_id) references positions(id), 
    primary key(id)
    );

create table info
(	id int auto_increment Not null,
	date_of_birth date not null,
    adress varchar(30) not null,
    primary key(id)
    );
    
create table departments
(	id int auto_increment Not null,
	department varchar(30) not null,
    head varchar(30) not null,
    primary key(id)
    );
    
create table positions
(	id int auto_increment Not null,
	position varchar(30) not null,
    primary key(id)
    );
    
insert into info
(date_of_birth, adress)
values
(19900101, 'sfdsdds'); 

insert into info
(date_of_birth, adress)
values
(19800202, 'sfdqwqwsdds');

insert into info
(date_of_birth, adress)
values
(19850101, 'qwerty');

insert into departments
(department, head)
values
('sales', 'Pupkin');

insert into departments
(department, head)
values
('production', 'Sidorov');

insert into positions
(position)
values
('head');

insert into positions
(position)
values
('specialist');

insert into workingInfo
(name, surname, education, info_id, departments_id, positions_id)
values
('Vasya', 'Pupkin','higher', 1, 1, 1);

insert into workingInfo
(name, surname, education, info_id, departments_id, positions_id)
values
('Yuriy', 'Sidorov','higher', 2, 2, 1);

insert into workingInfo
(name, surname, education, info_id, departments_id, positions_id)
values
('Ivan', 'Ivanov','higher', 3, 2, 2);

select * from positions;
select * from info;
select * from departments;
select * from workingInfo;
