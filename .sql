create database library_management;

use library_management;

create table categories(
	id int primary key auto_increment,
    name varchar(30) not null
);

create table publishers(
	id int primary key auto_increment,
    name varchar(30) not null
);

create table authors(
	id int primary key auto_increment,
    name varchar(30) not null
);

create table books(
	id int primary key auto_increment,
    code varchar(50) not null,
    title varchar(100) not null,
    publisher_id int not null,
    author_id int not null,
    categories_id int not null,
    year int(10) not null,
    price double not null,
    image varchar(100)
);


create table Orders(
	id int primary key auto_increment,
    student_id int not null,
    book_id int not null,
    amount int(30),
    money float,
    date DATE
);

create table Orders_details(
	id_book int,
    id_Orders int
);

create table Students(
	id int primary key auto_increment,
    name varchar(30) not null,
    address varchar(100),
    email varchar(100)
);



alter table books 
add constraint foreign key (publisher_id) references publishers(id),
add constraint foreign key (author_id) references authors(id),
add constraint foreign key (categories_id) references categories(id);


alter table Orders
add constraint foreign key (student_id) references Students(id);

alter table Orders_details
add constraint foreign key (id_book) references books(id),
add constraint foreign key (id_Orders) references Orders(id);


INSERT INTO `library_management`.`Students` (`id`, `name`, `address`, `email`) VALUES ('1', 'Son GoKu', 'Japan', 'SonGoku@Dragon.com.vn');
INSERT INTO `library_management`.`Students` (`id`, `name`, `address`, `email`) VALUES ('2', 'Vegeta', 'Japan', 'Vegeta@Dragon.com');
INSERT INTO `library_management`.`Students` (`id`, `name`, `address`, `email`) VALUES ('3', 'Tokuda', 'Japan', 'Tokuda@Dragon.com');
INSERT INTO `library_management`.`Students` (`id`, `name`, `address`, `email`) VALUES ('4', 'Naruto', 'Korea', 'Naruto@Naruto.com');
INSERT INTO `library_management`.`Students` (`id`, `name`, `address`, `email`) VALUES ('5', 'Luffy', 'VietNam', 'Luffy@Onepiece.com');

INSERT INTO `library_management`.`authors` (`id`, `name`) VALUES ('1', 'Akira Toriyama');
INSERT INTO `library_management`.`authors` (`id`, `name`) VALUES ('2', 'Fujiko.Ffujio');
INSERT INTO `library_management`.`authors` (`id`, `name`) VALUES ('3', 'Sora Aoi');
INSERT INTO `library_management`.`authors` (`id`, `name`) VALUES ('4', 'Odda');
INSERT INTO `library_management`.`authors` (`id`, `name`) VALUES ('5', 'MashashiKishimoto');



select * from authors;
select * from books;
select * from categories;
select * from Orders;
select * from Orders_details;
select * from publishers;
select * from Students;



