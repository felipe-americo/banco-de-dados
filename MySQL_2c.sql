create database if not exists curso_certo default character set utf8mb4 collate utf8mb4_0900_ai_ci;

use curso_certo;

create table if not exists usuario (
id_usuario int primary key auto_increment,
nome varchar(30) not null,
CPF varchar(14)not null,
email text not null unique,
telefone varchar(20),
tipo_de_usuario enum('admin','convencional')
)character set utf8mb4;

desc usuario;

create table if not exists matricula (
id_matricula int primary key auto_increment,
data_inicio date,
data_termino date,
status_matricula boolean,
foreign key (id_usuario) references usuario (id)
)character set utf8mb4;

desc matricula;

create table if not exists curso (
id_curso int primary key auto_increment,
area_curso varchar(40)not null,
nome_curso varchar(40)not null,
carga_horaria datetime,
foreign key (id_matricula) references matricula (id)
)character set utf8mb4;

desc curso;

create table if not exists categoria (
id_categoria int primary key auto_increment,
nome varchar(30) not null,
foreign key (id_curso) references curso(id)
)character set utf8mb4;

desc categoria;

create table if not exists video (
id_video int primary key auto_increment,
nome varchar (40) not null,
foreign key (id_curso) references curso (id)
)character set utf8mb4;

desc video;

insert into curso

values ('marketing', 'admnistração'),
('lógica da programação', 'Mysql'),
 ('phython', 'Java'),
 ('Html', 'CSS');
 
 select*from curso;

drop database curso_certo;