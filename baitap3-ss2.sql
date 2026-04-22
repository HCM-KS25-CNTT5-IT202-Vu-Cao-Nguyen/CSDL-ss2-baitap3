create database baitap3;
use baitap3;

drop table if exists orders;

create table orders (
	order_id int primary key,
    client_id varchar(10) not null unique,
    total_amount decimal(18,2) not null,
    order_date date default (current_date)
);