CREATE DATABASE alx_book_store;
USE alx_book_store;
create table Books (
book_id int auto_increment primary key,
title VARCHAR(130),
author_id INT,
price double,
publication_date date,
FOREIGN KEY (author_id) references Authors(author_id)
);
create table Authors (
author_id INT auto_increment primary key,
author_name varchar(215)
);
create table Customers (
customer_id INT auto_increment primary key,
customer_name varchar(215),
email varchar(215),
address text
);
create table Orders (
order_id INT auto_increment primary key,
customer_id int,
order_date DATE,
foreign key (customer_id) references Customers(customer_id)
);
create table Order_Details (
orderdetailedid int auto_increment primary key,
order_id int,
book_id int,
quantity double,
foreign key (order_id) references Orders(order_id),
foreign key (book_id) references Books(book_id)
);
