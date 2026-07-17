create database centroensenanza
go

use centroensenanza
go

--command to create a table--
create table Alumno(
codEstudiante int primary key identity (1,1)
nombre varchar,(50) not null,
apellido varchar (50) not null,
domicilio varchar (50) not null.
DNI int,
)
go

--command to create a table--
create table Asignatura(
Nombre int primary key identity (1,1)
semestre int not null,
nombre varchar(20)not null,
codigo int not null
Nrepetidas int not null
)
go

--command to create a table--
create table Calificaciones(
Nota int primary key identity (1,1)
)
go

--command to create a table--
create table Docente(
DNI int primary key identity (1,1)
nombre varchar (50) not null,
apellido varchar (50) not null,
domicilio varchar (50) not null
)
go