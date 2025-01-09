create database Concursos;
use Concursos;

create table Usuarios(
id int auto_increment primary key,
nombre varchar(30),
correo varchar(30), 
pass varchar(30)
);

create table Inscripciones(
cod int auto_increment primary key,
nombre varchar(30),
apellido varchar(30),
edad int,
correo varchar(30)
);

insert into Usuarios (nombre, correo, pass)
values
('Jose', 'jose@example.com', 'password123'),
('Ana', 'ana@example.com', 'abc123'),
('Rosa', 'rosa@example.com', 'mypassword123');

        
insert into Inscripciones (nombre, apellido, edad, correo)
values
('Juan', 'Sanchez', 20, 'juan.sanchez@example.com'),
('Carlos', 'Mendoza', 32, 'carlos.mendoza@example.com'),
('Pedro', 'López', 22, 'pedro.lopez@example.com');

select * from Usuarios;
select * from Inscripciones;