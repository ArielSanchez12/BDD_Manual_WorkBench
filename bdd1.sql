create database Operadores;
use Operadores;

create table Clientes(
id int auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
correo varchar(30) unique
);

insert into Clientes(nombre,apellido,correo) 
values ('Ariel','Sanchez','arielsanchez@gmail.com'),
		('Jose','Marquez','josemarquez@gmail.com'),
        ('Rosa','Zambrano','rosazambrano@gmail.com');
        
insert into Clientes(nombre, apellido, correo) 
values ('Richard', 'Padilla', 'marialopez@gmail.com');

select * from Clientes;