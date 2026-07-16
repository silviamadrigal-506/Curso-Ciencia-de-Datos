--creating a data base--
-- command to create a database--
create database clase1
go

use clase1
go
--command to create a table--
create table usuario(
id int,
direccion varchar(30),
telefono int,
)
go
--command to create a table without null--
create table produc(
id int not null,
nombre varchar(20)not null,
precio int not null
)
go

--creating a database--
INSERT INTO produc (id, nombre, precio)
VALUES
    (1, 'Laptop', 750000),
    (2, 'Mouse', 15000),
    (3, 'Teclado', 25000),
    (4, 'Monitor', 120000),
    (5, 'Impresora', 85000);
    go

    select * from produc
    go