drop database if exists project;

create database project;

use project;

create table user(
	id int auto_increment primary key,
	username varchar(50) unique not null,
	password varchar(50) not null,
	email varchar(50)
)engine=Innodb default charset=utf8;

insert into user values(1,"tom","123456","tom@itany.com"),
	(2,"jack","123456","jack@itany.com"),
	(3,"lucy","123456","lucy@itany.com");

create table streetNew(
	id int auto_increment primary key,
	title varchar(50) not null,
	imgPath varchar(50) not null,
	insto varchar(255),
	showTime date
)engine=Innodb default charset=utf8;

create table Org(
	id int auto_increment primary key,
	title varchar(50) not null,
	imgPath varchar(50) not null,
	insto varchar(255),
	showTime date
)engine=Innodb default charset=utf8;

create table streetActive(
	id int auto_increment primary key,
	title varchar(50) not null,
	imgPath varchar(50) not null,
	insto varchar(255),
	showTime date
)engine=Innodb default charset=utf8;