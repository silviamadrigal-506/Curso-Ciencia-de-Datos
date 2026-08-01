--University enrollment process--
-- Creating Data base, based on the Entity-Relationship Diagram (ERD)--

create database db_matricula_universitaria
go

use db_matricula_universitaria
go


-- Creating tables based on the Entity-Relationship Diagram (ERD)--


-- 1. description of the career database table--

create table tbl_carrera(
   idcarrera int primary key identity(1,1),
   nombre varchar(50) not null,
   facultad varchar(50) not null
   );
   go

-- 2. description of the professor database table---

create table tbl_profesor(
   idprofesor int primary key identity(1,1),
   nombre varchar(50) not null,
   apellido varchar(50) not null,
   correo varchar(100) unique not null,
   especialidad varchar (100) not null
   );
   go

-- 3. description of the course database table--

create table tbl_curso(
   idcurso int primary key identity(1,1),
   nombrecurso varchar(50) not null,
   creditos int not null,
   costo decimal (10,2) not null,
   idprofesor int not null,
   foreign key(idprofesor) references tbl_profesor(idprofesor)
   );
   go

-- 4. description of the student database table--

create table tbl_estudiante(
   idestudiante int primary key identity(1,1),
   nombre varchar(50) not null,
   apellido varchar(50) not null,
   fechanacimiento date not null,
   correo varchar(100) unique not null,
   idcarrera int not null, 
   foreign key (idcarrera) references tbl_carrera(idcarrera)
   );
   go

-- 5. description of the enrollment database table--  

create table tbl_matricula(
   idmatricula int primary key identity(1,1),
   periodo int not null,
   totalcreditos int not null,
   idestudiante int not null,
   estado varchar (50) not null,
   foreign key (idestudiante) references tbl_estudiante(idestudiante)
   );
   go

-- 6. description of the enrollment detail database table--

create table tbl_detallematricula(
   iddetalle int primary key identity(1,1),
   notalfinal decimal(5,2),
   aprobado bit not null,
   idcurso int not null,
   idmatricula int not null,
   foreign key(idcurso) references tbl_curso(idcurso),
   foreign key(idmatricula) references tbl_matricula(idmatricula)
);
go


  --Creating an  Insert registry is adding the information to every item on every table--


  -- 1. description of the career database table--
-- This table stores information about the academic careers offered by the university, including the career name and the faculty to which it belongs.--


   insert into tbl_Carrera (Nombre, Facultad)
values
('Ingeniería en Sistemas', 'Facultad de Ingeniería'),
('Administración de Empresas', 'Facultad de Ciencias Económicas'),
('Contabilidad', 'Facultad de Ciencias Económicas'),
('Derecho', 'Facultad de Ciencias Jurídicas'),
('Medicina', 'Facultad de Ciencias de la Salud'),
('Psicología', 'Facultad de Ciencias Sociales'),
('Ingeniería Civil', 'Facultad de Ingeniería'),
('Ingeniería Industrial', 'Facultad de Ingeniería'),
('Ingeniería Eléctrica', 'Facultad de Ingeniería'),
('Arquitectura', 'Facultad de Arquitectura'),
('Enfermería', 'Facultad de Ciencias de la Salud'),
('Farmacia', 'Facultad de Ciencias de la Salud'),
('Odontología', 'Facultad de Ciencias de la Salud'),
('Economía', 'Facultad de Ciencias Económicas'),
('Mercadeo', 'Facultad de Ciencias Económicas'),
('Finanzas', 'Facultad de Ciencias Económicas'),
('Relaciones Internacionales', 'Facultad de Ciencias Sociales'),
('Trabajo Social', 'Facultad de Ciencias Sociales'),
('Comunicación', 'Facultad de Ciencias Sociales'),
('Educación', 'Facultad de Educación'),
('Ingeniería Mecánica', 'Facultad de Ingeniería'),
('Ingeniería Química', 'Facultad de Ingeniería'),
('Ingeniería Ambiental', 'Facultad de Ingeniería'),
('Ingeniería en Telecomunicaciones', 'Facultad de Ingeniería'),
('Ingeniería en Computación', 'Facultad de Ingeniería'),
('Ingeniería en Producción', 'Facultad de Ingeniería'),
('Ingeniería Agrícola', 'Facultad de Ingeniería'),
('Ingeniería Forestal', 'Facultad de Ciencias Agropecuarias'),
('Biología', 'Facultad de Ciencias Naturales'),
('Química', 'Facultad de Ciencias Naturales'),
('Física', 'Facultad de Ciencias Naturales'),
('Matemáticas', 'Facultad de Ciencias Naturales'),
('Estadística', 'Facultad de Ciencias Naturales'),
('Administración Pública', 'Facultad de Ciencias Económicas'),
('Comercio Internacional', 'Facultad de Ciencias Económicas'),
('Turismo', 'Facultad de Ciencias Económicas'),
('Recursos Humanos', 'Facultad de Ciencias Económicas'),
('Negocios Internacionales', 'Facultad de Ciencias Económicas'),
('Diseño Gráfico', 'Facultad de Artes'),
('Diseño Industrial', 'Facultad de Artes'),
('Artes Plásticas', 'Facultad de Artes'),
('Música', 'Facultad de Artes'),
('Teatro', 'Facultad de Artes'),
('Literatura', 'Facultad de Humanidades'),
('Historia', 'Facultad de Humanidades'),
('Filosofía', 'Facultad de Humanidades'),
('Idiomas', 'Facultad de Humanidades'),
('Periodismo', 'Facultad de Ciencias Sociales'),
('Medicina Veterinaria', 'Facultad de Ciencias de la Salud'),
('Nutrición', 'Facultad de Ciencias de la Salud');
go

select * from tbl_carrera
go


-- 2. description of the professor database table--
-- This table stores information about university professors, including their personal data, email address, and academic specialization.--

insert into tbl_Profesor (Nombre, Apellido, Correo, Especialidad)
values
('Juan', 'Pérez', 'juan.perez@universidad.edu', 'Bases de Datos'),
('María', 'Rodríguez', 'maria.rodriguez@universidad.edu', 'Programación'),
('Carlos', 'Sánchez', 'carlos.sanchez@universidad.edu', 'Matemáticas'),
('Ana', 'López', 'ana.lopez@universidad.edu', 'Estadística'),
('Luis', 'Gómez', 'luis.gomez@universidad.edu', 'Redes de Computadoras'),
('Sofía', 'Ramírez', 'sofia.ramirez@universidad.edu', 'Ingeniería de Software'),
('Miguel', 'Castro', 'miguel.castro@universidad.edu', 'Inteligencia Artificial'),
('Laura', 'Vargas', 'laura.vargas@universidad.edu', 'Ciberseguridad'),
('Andrés', 'Mora', 'andres.mora@universidad.edu', 'Sistemas Operativos'),
('Gabriela', 'Jiménez', 'gabriela.jimenez@universidad.edu', 'Desarrollo Web'),
('Fernando', 'Herrera', 'fernando.herrera@universidad.edu', 'Administración de Empresas'),
('Patricia', 'Rojas', 'patricia.rojas@universidad.edu', 'Contabilidad'),
('Ricardo', 'Navarro', 'ricardo.navarro@universidad.edu', 'Economía'),
('Daniela', 'Solís', 'daniela.solis@universidad.edu', 'Mercadeo'),
('José', 'Alvarado', 'jose.alvarado@universidad.edu', 'Finanzas'),
('Verónica', 'Chaves', 'veronica.chaves@universidad.edu', 'Derecho'),
('Diego', 'Araya', 'diego.araya@universidad.edu', 'Psicología'),
('Carolina', 'Salazar', 'carolina.salazar@universidad.edu', 'Arquitectura'),
('Esteban', 'Quesada', 'esteban.quesada@universidad.edu', 'Ingeniería Civil'),
('Natalia', 'Cordero', 'natalia.cordero@universidad.edu', 'Enfermería'),
('Roberto', 'Fernández', 'roberto.fernandez@universidad.edu', 'Ingeniería Industrial'),
('Paula', 'Campos', 'paula.campos@universidad.edu', 'Ingeniería Eléctrica'),
('Javier', 'Muñoz', 'javier.munoz@universidad.edu', 'Ingeniería Mecánica'),
('Silvia', 'Méndez', 'silvia.mendez@universidad.edu', 'Ingeniería Química'),
('Alejandro', 'Porras', 'alejandro.porras@universidad.edu', 'Ingeniería Ambiental'),
('Cristina', 'Valverde', 'cristina.valverde@universidad.edu', 'Ingeniería en Telecomunicaciones'),
('Mauricio', 'Aguilar', 'mauricio.aguilar@universidad.edu', 'Ingeniería en Computación'),
('Adriana', 'León', 'adriana.leon@universidad.edu', 'Ingeniería en Producción'),
('Kevin', 'Segura', 'kevin.segura@universidad.edu', 'Ingeniería Agrícola'),
('Monserrat', 'Calvo', 'monserrat.calvo@universidad.edu', 'Ingeniería Forestal'),
('Óscar', 'Núñez', 'oscar.nunez@universidad.edu', 'Biología'),
('Melissa', 'Villalobos', 'melissa.villalobos@universidad.edu', 'Química'),
('Francisco', 'Céspedes', 'francisco.cespedes@universidad.edu', 'Física'),
('Tatiana', 'Benavides', 'tatiana.benavides@universidad.edu', 'Estadística Aplicada'),
('Marco', 'Fuentes', 'marco.fuentes@universidad.edu', 'Administración Pública'),
('Yolanda', 'Rivas', 'yolanda.rivas@universidad.edu', 'Comercio Internacional'),
('Hugo', 'Valerio', 'hugo.valerio@universidad.edu', 'Turismo'),
('Isabel', 'Arias', 'isabel.arias@universidad.edu', 'Recursos Humanos'),
('Sergio', 'Badilla', 'sergio.badilla@universidad.edu', 'Negocios Internacionales'),
('Andrea', 'Montoya', 'andrea.montoya@universidad.edu', 'Diseño Gráfico'),
('Manuel', 'Madrigal', 'manuel.madrigal@universidad.edu', 'Diseño Industrial'),
('Roxana', 'Ureña', 'roxana.urena@universidad.edu', 'Artes Plásticas'),
('Gerardo', 'Ortiz', 'gerardo.ortiz@universidad.edu', 'Música'),
('Elena', 'Cascante', 'elena.cascante@universidad.edu', 'Teatro'),
('Víctor', 'Zúñiga', 'victor.zuniga@universidad.edu', 'Literatura'),
('Paola', 'Brenes', 'paola.brenes@universidad.edu', 'Historia'),
('Emilio', 'Granados', 'emilio.granados@universidad.edu', 'Filosofía'),
('Claudia', 'Soto', 'claudia.soto@universidad.edu', 'Idiomas'),
('Alberto', 'Murillo', 'alberto.murillo@universidad.edu', 'Periodismo'),
('Lorena', 'Guerrero', 'lorena.guerrero@universidad.edu', 'Nutrición');
go

select * from tbl_profesor
go


-- 3. description of the course database table--
-- This table stores information about the courses offered by the university, including the course name, number of credits, cost, and assigned professor.--

insert into tbl_Curso (NombreCurso, Creditos, Costo, IdProfesor)
values
('Bases de Datos', 4, 450.00, 1),
('Programación I', 4, 500.00, 2),
('Matemáticas I', 3, 350.00, 3),
('Estadística', 3, 400.00, 4),
('Redes de Computadoras', 4, 550.00, 5),
('Ingeniería de Software', 4, 600.00, 6),
('Inteligencia Artificial', 4, 700.00, 7),
('Ciberseguridad', 3, 650.00, 8),
('Sistemas Operativos', 4, 500.00, 9),
('Desarrollo Web', 3, 450.00, 10),
('Administración', 3, 400.00, 11),
('Contabilidad General', 3, 420.00, 12),
('Economía', 3, 430.00, 13),
('Mercadeo', 3, 410.00, 14),
('Finanzas', 4, 520.00, 15),
('Derecho Empresarial', 3, 480.00, 16),
('Psicología Organizacional', 3, 390.00, 17),
('Diseño Arquitectónico', 4, 650.00, 18),
('Ingeniería Civil I', 4, 680.00, 19),
('Enfermería General', 4, 600.00, 20),
('Ingeniería Industrial', 4, 650.00, 21),
('Ingeniería Eléctrica', 4, 670.00, 22),
('Ingeniería Mecánica', 4, 690.00, 23),
('Ingeniería Química', 4, 700.00, 24),
('Ingeniería Ambiental', 4, 680.00, 25),
('Telecomunicaciones', 4, 720.00, 26),
('Ingeniería en Computación', 4, 750.00, 27),
('Ingeniería en Producción', 4, 710.00, 28),
('Ingeniería Agrícola', 4, 640.00, 29),
('Ingeniería Forestal', 4, 660.00, 30),
('Biología General', 3, 420.00, 31),
('Química General', 4, 450.00, 32),
('Física General', 4, 460.00, 33),
('Estadística Aplicada', 3, 440.00, 34),
('Administración Pública', 3, 430.00, 35),
('Comercio Internacional', 4, 510.00, 36),
('Gestión Turística', 3, 420.00, 37),
('Gestión del Talento Humano', 3, 450.00, 38),
('Negocios Internacionales', 4, 540.00, 39),
('Diseño Gráfico', 4, 610.00, 40),
('Diseño Industrial', 4, 630.00, 41),
('Artes Plásticas', 3, 390.00, 42),
('Apreciación Musical', 3, 380.00, 43),
('Expresión Teatral', 3, 400.00, 44),
('Literatura Universal', 3, 410.00, 45),
('Historia Contemporánea', 3, 420.00, 46),
('Filosofía Moderna', 3, 390.00, 47),
('Inglés Avanzado', 4, 480.00, 48),
('Redacción Periodística', 3, 450.00, 49),
('Nutrición Humana', 4, 550.00, 50);
go

select * from tbl_curso
go

-- 4. description of the student database table--
-- This table stores information about enrolled students, including their personal data, email address, birth date, and associated academic career.---

insert into tbl_Estudiante (Nombre, Apellido, FechaNacimiento, Correo, IdCarrera)
values
('Andrea', 'Mora', '2002-03-15', 'andrea.mora@estudiante.edu', 1),
('Brandon', 'Rojas', '2001-07-22', 'brandon.rojas@estudiante.edu', 2),
('Camila', 'Jiménez', '2003-01-10', 'camila.jimenez@estudiante.edu', 3),
('David', 'Vargas', '2002-11-05', 'david.vargas@estudiante.edu', 4),
('Elena', 'Castro', '2001-09-18', 'elena.castro@estudiante.edu', 5),
('Felipe', 'Solís', '2003-06-30', 'felipe.solis@estudiante.edu', 6),
('Gabriela', 'Navarro', '2002-12-08', 'gabriela.navarro@estudiante.edu', 7),
('Hugo', 'Alvarado', '2001-05-27', 'hugo.alvarado@estudiante.edu', 8),
('Isabel', 'Quesada', '2003-02-14', 'isabel.quesada@estudiante.edu', 9),
('Javier', 'Chaves', '2002-10-01', 'javier.chaves@estudiante.edu', 10),
('Karen', 'Salazar', '2001-08-12', 'karen.salazar@estudiante.edu', 11),
('Leonardo', 'Araya', '2003-04-25', 'leonardo.araya@estudiante.edu', 12),
('María', 'Cordero', '2002-01-19', 'maria.cordero@estudiante.edu', 13),
('Nicolás', 'Herrera', '2001-11-11', 'nicolas.herrera@estudiante.edu', 14),
('Olivia', 'Ramírez', '2003-09-03', 'olivia.ramirez@estudiante.edu', 15),
('Pablo', 'Gómez', '2002-05-16', 'pablo.gomez@estudiante.edu', 16),
('Rebeca', 'Sánchez', '2001-12-28', 'rebeca.sanchez@estudiante.edu', 17),
('Samuel', 'Pérez', '2003-07-09', 'samuel.perez@estudiante.edu', 18),
('Tatiana', 'López', '2002-02-21', 'tatiana.lopez@estudiante.edu', 19),
('Valeria', 'Rodríguez', '2001-10-14', 'valeria.rodriguez@estudiante.edu', 20),

('Alejandro', 'Méndez', '2003-03-12', 'alejandro.mendez@estudiante.edu', 21),
('Beatriz', 'Fuentes', '2002-06-18', 'beatriz.fuentes@estudiante.edu', 22),
('Cristian', 'Aguilar', '2001-09-25', 'cristian.aguilar@estudiante.edu', 23),
('Daniela', 'Villalobos', '2003-11-30', 'daniela.villalobos@estudiante.edu', 24),
('Esteban', 'Madrigal', '2002-04-07', 'esteban.madrigal@estudiante.edu', 25),
('Fernanda', 'Campos', '2001-12-16', 'fernanda.campos@estudiante.edu', 26),
('Gerardo', 'Valverde', '2003-08-22', 'gerardo.valverde@estudiante.edu', 27),
('Helena', 'Badilla', '2002-10-09', 'helena.badilla@estudiante.edu', 28),
('Iván', 'Segura', '2001-03-27', 'ivan.segura@estudiante.edu', 29),
('Juliana', 'León', '2003-05-13', 'juliana.leon@estudiante.edu', 30),
('Karla', 'Murillo', '2002-07-29', 'karla.murillo@estudiante.edu', 31),
('Luis', 'Céspedes', '2001-11-04', 'luis.cespedes@estudiante.edu', 32),
('Mariana', 'Benavides', '2003-01-25', 'mariana.benavides@estudiante.edu', 33),
('Néstor', 'Porras', '2002-09-17', 'nestor.porras@estudiante.edu', 34),
('Oscar', 'Rivas', '2001-06-06', 'oscar.rivas@estudiante.edu', 35),
('Patricia', 'Valerio', '2003-12-19', 'patricia.valerio@estudiante.edu', 36),
('Raúl', 'Arias', '2002-03-03', 'raul.arias@estudiante.edu', 37),
('Sofía', 'Montoya', '2001-08-15', 'sofia.montoya@estudiante.edu', 38),
('Tomás', 'Ureña', '2003-10-28', 'tomas.urena@estudiante.edu', 39),
('Uriel', 'Ortiz', '2002-05-20', 'uriel.ortiz@estudiante.edu', 40),
('Vanessa', 'Cascante', '2001-01-31', 'vanessa.cascante@estudiante.edu', 41),
('William', 'Granados', '2003-07-14', 'william.granados@estudiante.edu', 42),
('Xiomara', 'Soto', '2002-11-23', 'xiomara.soto@estudiante.edu', 43),
('Yessenia', 'Murillo', '2001-04-11', 'yessenia.murillo@estudiante.edu', 44),
('Zachary', 'Guerrero', '2003-06-26', 'zachary.guerrero@estudiante.edu', 45),
('Adriana', 'Brenes', '2002-12-05', 'adriana.brenes@estudiante.edu', 46),
('Bernardo', 'Cordero', '2001-09-09', 'bernardo.cordero@estudiante.edu', 47),
('Carolina', 'Quesada', '2003-02-28', 'carolina.quesada@estudiante.edu', 48),
('Diego', 'Núñez', '2002-08-08', 'diego.nunez@estudiante.edu', 49),
('Erika', 'Herrera', '2001-10-30', 'erika.herrera@estudiante.edu', 50);
go

select * from tbl_estudiante
go



-- 5. description of the enrollment database table--
-- This table stores information about student enrollments, including the academic period, total credits, enrollment status, and the registered student.--

insert into tbl_Matricula (Periodo, TotalCreditos, IdEstudiante, Estado)
values
(202601,16,1,'Activo'),
(202601,14,2,'Activo'),
(202601,18,3,'Activo'),
(202601,12,4,'Completada'),
(202601,15,5,'Activo'),
(202601,16,6,'Activo'),
(202601,13,7,'Pendiente'),
(202601,18,8,'Activo'),
(202601,14,9,'Completada'),
(202601,17,10,'Activo'),

(202602,15,11,'Activo'),
(202602,18,12,'Activo'),
(202602,12,13,'Pendiente'),
(202602,16,14,'Completada'),
(202602,14,15,'Activo'),
(202602,18,16,'Activo'),
(202602,15,17,'Activo'),
(202602,13,18,'Pendiente'),
(202602,17,19,'Completada'),
(202602,16,20,'Activo'),

(202601,18,21,'Activo'),
(202601,14,22,'Completada'),
(202601,15,23,'Activo'),
(202601,17,24,'Activo'),
(202601,13,25,'Pendiente'),
(202601,16,26,'Activo'),
(202601,18,27,'Completada'),
(202601,12,28,'Activo'),
(202601,15,29,'Activo'),
(202601,14,30,'Pendiente'),

(202602,16,31,'Activo'),
(202602,18,32,'Completada'),
(202602,13,33,'Activo'),
(202602,15,34,'Activo'),
(202602,17,35,'Pendiente'),
(202602,14,36,'Activo'),
(202602,18,37,'Completada'),
(202602,12,38,'Activo'),
(202602,16,39,'Activo'),
(202602,15,40,'Pendiente'),

(202601,17,41,'Activo'),
(202601,14,42,'Completada'),
(202601,16,43,'Activo'),
(202601,18,44,'Activo'),
(202601,13,45,'Pendiente'),
(202602,15,46,'Activo'),
(202602,17,47,'Completada'),
(202602,14,48,'Activo'),
(202602,16,49,'Activo'),
(202602,18,50,'Pendiente');
go

select * from tbl_matricula;
go

-- 6. description of the enrollment detail database table--
-- This table stores detailed information about enrolled courses, including final grades, approval status, courses, and related enrollments.--

insert into tbl_DetalleMatricula (notalfinal, aprobado, idcurso, idmatricula)
values
(95.00, 1, 1, 1),
(88.00, 1, 2, 1),
(76.00, 1, 3, 2),
(91.00, 1, 4, 2),
(65.00, 0, 5, 3),
(82.00, 1, 6, 3),
(90.00, 1, 7, 4),
(73.00, 1, 8, 4),
(55.00, 0, 9, 5),
(86.00, 1, 10, 5),

(92.00, 1, 11, 6),
(78.00, 1, 12, 6),
(84.00, 1, 13, 7),
(69.00, 0, 14, 7),
(96.00, 1, 15, 8),
(87.00, 1, 16, 8),
(74.00, 1, 17, 9),
(93.00, 1, 18, 9),
(61.00, 0, 19, 10),
(89.00, 1, 20, 10),

(94.00, 1, 21, 11),
(80.00, 1, 22, 11),
(72.00, 1, 23, 12),
(58.00, 0, 24, 12),
(97.00, 1, 25, 13),
(83.00, 1, 26, 13),
(75.00, 1, 27, 14),
(90.00, 1, 28, 14),
(67.00, 0, 29, 15),
(85.00, 1, 30, 15),

(91.00, 1, 31, 16),
(79.00, 1, 32, 16),
(88.00, 1, 33, 17),
(62.00, 0, 34, 17),
(95.00, 1, 35, 18),
(81.00, 1, 36, 18),
(77.00, 1, 37, 19),
(92.00, 1, 38, 19),
(59.00, 0, 39, 20),
(86.00, 1, 40, 20),

(93.00, 1, 41, 21),
(70.00, 1, 42, 22),
(82.00, 1, 43, 23),
(64.00, 0, 44, 24),
(98.00, 1, 45, 25),
(76.00, 1, 46, 26),
(89.00, 1, 47, 27),
(68.00, 0, 48, 28),
(91.00, 1, 49, 29),
(84.00, 1, 50, 30);
go

select * from tbl_DetalleMatricula;
go

---SQL Queries Applied to the Created Database--

--SELECT--
-- Select queries for all database tables

use db_matricula_universitaria
go

-- 1. Query of the Career table
select *
from tbl_carrera;
go


-- 2. Query of the Professor table
select *
from tbl_profesor;
go


-- 3. Query of the Course table
select *
from tbl_curso;
go


-- 4. Query of the Student table
select *
from tbl_estudiante;
go


-- 5. Query of the Enrollment table
select *
from tbl_matricula;
go


-- 6. Query of the Enrollment Detail table
select *
from tbl_detallematricula;
go

--WHERE--
-- where queries for all database tables

use db_matricula_universitaria
go


-- 1. Query of the Career table using where
select *
from tbl_carrera
where facultad = 'Facultad de Ingeniería';
go


-- 2. Query of the Professor table using where
select *
from tbl_profesor
where especialidad = 'Bases de Datos';
go


-- 3. Query of the Course table using where
select *
from tbl_curso
where creditos = 4;
go


-- 4. Query of the Student table using where
select *
from tbl_estudiante
where idcarrera = 1;
go


-- 5. Query of the Enrollment table using where
select *
from tbl_matricula
where estado = 'Activo';
go


-- 6. Query of the Enrollment Detail table using where
select *
from tbl_detallematricula
where aprobado = 1;
go

--ORDER BY---
-- Order by queries for all database tables

use db_matricula_universitaria
go


-- 1. Query of the Career table using order by
select *
from tbl_carrera
order by nombre asc;
go


-- 2. Query of the Professor table using order by
select *
from tbl_profesor
order by apellido asc;
go


-- 3. Query of the Course table using order by
select *
from tbl_curso
order by costo desc;
go


-- 4. Query of the Student table using order by
select *
from tbl_estudiante
order by fechanacimiento asc;
go


-- 5. Query of the Enrollment table using order by
select *
from tbl_matricula
order by totalcreditos desc;
go


-- 6. Query of the Enrollment Detail table using order by
select *
from tbl_detallematricula
order by notalfinal desc;
go


--DISTINCT

-- Distinct queries for all database tables

use db_matricula_universitaria
go


-- 1. Query of the Career table using distinct
select distinct facultad
from tbl_carrera;
go


-- 2. Query of the Professor table using distinct
select distinct especialidad
from tbl_profesor;
go


-- 3. Query of the Course table using distinct
select distinct creditos
from tbl_curso;
go


-- 4. Query of the Student table using distinct
select distinct idcarrera
from tbl_estudiante;
go


-- 5. Query of the Enrollment table using distinct
select distinct estado
from tbl_matricula;
go


-- 6. Query of the Enrollment Detail table using distinct
select distinct aprobado
from tbl_detallematricula;
go

--TOP--
-- Top queries for all tables in the database

use db_matricula_universitaria
go

-- 1. Top query for the Career table
select top 5 *
from tbl_carrera;
go

-- 2. Top query for the Professor table
select top 5 *
from tbl_profesor;
go

-- 3. Top query for the Course table
select top 5 *
from tbl_curso;
go

-- 4. Top query for the Student table
select top 5 *
from tbl_estudiante;
go

-- 5. Top query for the Enrollment table
select top 5 *
from tbl_matricula;
go

-- 6. Top query for the Enrollment Detail table
select top 5 *
from tbl_detallematricula;
go

--LIKE--
-- like queries for all tables in the database

use db_matricula_universitaria
go

-- 1. Like query for the Career table
select *
from tbl_carrera
where nombre like 'Ingeniería%';
go


-- 2. Like query for the Professor table
select *
from tbl_profesor
where apellido like 'M%';
go


-- 3. Like query for the Course table
select *
from tbl_curso
where nombrecurso like '%Ingeniería%';
go


-- 4. Like query for the Student table
select *
from tbl_estudiante
where nombre like 'A%';
go


-- 5. Like query for the Enrollment table
select *
from tbl_matricula
where estado like 'Act%';
go


-- 6. Like query for the Enrollment Detail table
select *
from tbl_detallematricula
where cast(notalfinal as varchar(10)) like '9%';
go

--BETWEEN--
-- between queries for all tables in the database

use db_matricula_universitaria
go

-- 1. Between query for the Career table
select *
from tbl_carrera
where idcarrera between 10 and 20;
go


-- 2. Between query for the Professor table
select *
from tbl_profesor
where idprofesor between 5 and 15;
go


-- 3. Between query for the Course table
select *
from tbl_curso
where costo between 450.00 and 600.00;
go


-- 4. Between query for the Student table
select *
from tbl_estudiante
where fechanacimiento between '2002-01-01' and '2002-12-31';
go


-- 5. Between query for the Enrollment table
select *
from tbl_matricula
where totalcreditos between 14 and 17;
go


-- 6. Between query for the Enrollment Detail table
select *
from tbl_detallematricula
where notalfinal between 80 and 95;
go


--IN--
-- IN queries for all database tables

use db_matricula_universitaria
go


-- 1. In query for the Career table
select *
from tbl_carrera
where idcarrera in (1, 5, 10);
go


-- 2. In query for the Professor table
select *
from tbl_profesor
where idprofesor in (2, 8, 15);
go


-- 3. In query for the Course table
select *
from tbl_curso
where creditos in (3, 4);
go


-- 4. In query for the Student table
select *
from tbl_estudiante
where idcarrera in (1, 5, 10);
go


-- 5. In query for the Enrollment table
select *
from tbl_matricula
where estado in ('Activo', 'Pendiente');
go


-- 6. In query for the Enrollment Detail table
select *
from tbl_detallematricula
where idcurso in (5, 10, 15, 20);
go

--NOT--
-- Not queries for all database tables

use db_matricula_universitaria
go


-- 1. Not query for the Career table
select *
from tbl_carrera
where not facultad = 'Facultad de Ingeniería';
go


-- 2. Not query for the Professor table
select *
from tbl_profesor
where not especialidad = 'Bases de Datos';
go


-- 3. Not query for the Course table
select *
from tbl_curso
where not creditos = 4;
go


-- 4. Not query for the Student table
select *
from tbl_estudiante
where not idcarrera = 1;
go


-- 5. Not query for the Enrollment table
select *
from tbl_matricula
where not estado = 'Activo';
go


-- 6. Not query for the Enrollment Detail table
select *
from tbl_detallematricula
where not aprobado = 1;
go

--IS NULL --
-- Is null queries for all database tables

use db_matricula_universitaria
go


-- 1. Is null query for the Career table
select *
from tbl_carrera
where facultad is null;
go


-- 2. Is null query for the Professor table
select *
from tbl_profesor
where especialidad is null;
go


-- 3. Is null query for the Course table
select *
from tbl_curso
where costo is null;
go


-- 4. Is null query for the Student table
select *
from tbl_estudiante
where correo is null;
go


-- 5. Is null query for the Enrollment table
select *
from tbl_matricula
where estado is null;
go


-- 6. Is null query for the Enrollment Detail table
select *
from tbl_detallematricula
where notalfinal is null;
go

--IS NOT NULL--

-- Is not null queries for all database tables

use db_matricula_universitaria
go


-- 1. Is not null query for the Career table
select *
from tbl_carrera
where facultad is not null;
go


-- 2. Is not null query for the Professor table
select *
from tbl_profesor
where especialidad is not null;
go


-- 3. Is not null query for the Course table
select *
from tbl_curso
where costo is not null;
go


-- 4. Is not null query for the Student table
select *
from tbl_estudiante
where correo is not null;
go


-- 5. Is not null query for the Enrollment table
select *
from tbl_matricula
where estado is not null;
go


-- 6. Is not null query for the Enrollment Detail table
select *
from tbl_detallematricula
where notalfinal is not null;
go

--AND--
-- And queries for all database tables

use db_matricula_universitaria
go


-- 1. And query for the Career table
select *
from tbl_carrera
where facultad = 'Facultad de Ingeniería'
and idcarrera <= 10;
go


-- 2. And query for the Professor table
select *
from tbl_profesor
where especialidad like '%Ingeniería%'
and idprofesor <= 30;
go


-- 3. And query for the Course table
select *
from tbl_curso
where creditos = 4
and costo > 600;
go


-- 4. And query for the Student table
select *
from tbl_estudiante
where idcarrera between 1 and 10
and fechanacimiento > '2002-01-01';
go


-- 5. And query for the Enrollment table
select *
from tbl_matricula
where estado = 'Activo'
and periodo = 202601;
go


-- 6. And query for the Enrollment Detail table
select *
from tbl_detallematricula
where aprobado = 1
and notalfinal >= 90;
go

--OR--
-- Or queries for all database tables

use db_matricula_universitaria
go


-- 1. Or query for the Career table
select *
from tbl_carrera
where facultad = 'Facultad de Ingeniería'
or facultad = 'Facultad de Ciencias Económicas';
go


-- 2. Or query for the Professor table
select *
from tbl_profesor
where especialidad = 'Bases de Datos'
or especialidad = 'Programación';
go


-- 3. Or query for the Course table
select *
from tbl_curso
where creditos = 3
or costo > 700;
go


-- 4. Or query for the Student table
select *
from tbl_estudiante
where idcarrera = 1
or idcarrera = 2;
go


-- 5. Or query for the Enrollment table
select *
from tbl_matricula
where estado = 'Activo'
or estado = 'Pendiente';
go


-- 6. Or query for the Enrollment Detail table
select *
from tbl_detallematricula
where aprobado = 0
or notalfinal >= 90;
go

--GROUP BY  --
-- Group by queries for all database tables

use db_matricula_universitaria
go


-- 1. Group by query for the Career table
select facultad, count(*) as total_careers
from tbl_carrera
group by facultad;
go


-- 2. Group by query for the Professor table
select especialidad, count(*) as total_professors
from tbl_profesor
group by especialidad;
go


-- 3. Group by query for the Course table
select creditos, count(*) as total_courses
from tbl_curso
group by creditos;
go


-- 4. Group by query for the Student table
select idcarrera, count(*) as total_students
from tbl_estudiante
group by idcarrera;
go


-- 5. Group by query for the Enrollment table
select estado, count(*) as total_enrollments
from tbl_matricula
group by estado;
go


-- 6. Group by query for the Enrollment Detail table
select aprobado, count(*) as total_records
from tbl_detallematricula
group by aprobado;
go


--Group by--
-- Group by queries for all database tables

use db_matricula_universitaria
go

-- 1. Group by query for the Career table
select facultad, count(*) as total_careers
from tbl_carrera
group by facultad;
go


-- 2. Group by query for the Professor table
select especialidad, count(*) as total_professors
from tbl_profesor
group by especialidad;
go


-- 3. Group by query for the Course table
select creditos, count(*) as total_courses
from tbl_curso
group by creditos;
go


-- 4. Group by query for the Student table
select idcarrera, count(*) as total_students
from tbl_estudiante
group by idcarrera;
go


-- 5. Group by query for the Enrollment table
select estado, count(*) as total_enrollments
from tbl_matricula
group by estado;
go


-- 6. Group by query for the Enrollment Detail table
select aprobado, count(*) as total_records
from tbl_detallematricula
group by aprobado;
go

--HAVING--
-- Having queries for all database tables

use db_matricula_universitaria
go

-- 1. Having query for the Career table
select facultad, count(*) as total_careers
from tbl_carrera
group by facultad
having count(*) > 5;
go


-- 2. Having query for the Professor table
select especialidad, count(*) as total_professors
from tbl_profesor
group by especialidad
having count(*) >= 1;
go


-- 3. Having query for the Course table
select creditos, count(*) as total_courses
from tbl_curso
group by creditos
having count(*) > 10;
go


-- 4. Having query for the Student table
select idcarrera, count(*) as total_students
from tbl_estudiante
group by idcarrera
having count(*) >= 1;
go


-- 5. Having query for the Enrollment table
select estado, count(*) as total_enrollments
from tbl_matricula
group by estado
having count(*) > 10;
go


-- 6. Having query for the Enrollment Detail table
select aprobado, count(*) as total_records
from tbl_detallematricula
group by aprobado
having count(*) > 5;
go

--COUNT--
-- Count queries for all database tables

use db_matricula_universitaria
go

-- 1. Count query for the Career table
select count(*) as total_careers
from tbl_carrera;
go


-- 2. Count query for the Professor table
select count(*) as total_professors
from tbl_profesor;
go


-- 3. Count query for the Course table
select count(*) as total_courses
from tbl_curso;
go


-- 4. Count query for the Student table
select count(*) as total_students
from tbl_estudiante;
go


-- 5. Count query for the Enrollment table
select count(*) as total_enrollments
from tbl_matricula;
go


-- 6. Count query for the Enrollment Detail table
select count(*) as total_records
from tbl_detallematricula;
go

--SUM--
-- Sum queries for all database tables

use db_matricula_universitaria
go

-- 1. Sum query for the Career table
select sum(idcarrera) as total_career_ids
from tbl_carrera;
go


-- 2. Sum query for the Professor table
select sum(idprofesor) as total_professor_ids
from tbl_profesor;
go


-- 3. Sum query for the Course table
select sum(costo) as total_course_cost
from tbl_curso;
go


-- 4. Sum query for the Student table
select sum(idcarrera) as total_career_assignments
from tbl_estudiante;
go


-- 5. Sum query for the Enrollment table
select sum(totalcreditos) as total_credits
from tbl_matricula;
go


-- 6. Sum query for the Enrollment Detail table
select sum(notalfinal) as total_final_grades
from tbl_detallematricula;
go

--AVG--
-- Average queries for all database tables

use db_matricula_universitaria
go

-- 1. Avg query for the Career table
select avg(idcarrera) as average_career_id
from tbl_carrera;
go


-- 2. Avg query for the Professor table
select avg(idprofesor) as average_professor_id
from tbl_profesor;
go


-- 3. Avg query for the Course table
select avg(costo) as average_course_cost
from tbl_curso;
go


-- 4. Avg query for the Student table
select avg(idcarrera) as average_career_assignment
from tbl_estudiante;
go


-- 5. Avg query for the Enrollment table
select avg(totalcreditos) as average_credits
from tbl_matricula;
go


-- 6. Avg query for the Enrollment Detail table
select avg(notalfinal) as average_final_grade
from tbl_detallematricula;
go

--MIN--
-- Minimum queries for all database tables

use db_matricula_universitaria
go


-- 1. Min query for the Career table
select min(idcarrera) as minimum_career_id
from tbl_carrera;
go


-- 2. Min query for the Professor table
select min(idprofesor) as minimum_professor_id
from tbl_profesor;
go


-- 3. Min query for the Course table
select min(costo) as minimum_course_cost
from tbl_curso;
go


-- 4. Min query for the Student table
select min(idestudiante) as minimum_student_id
from tbl_estudiante;
go


-- 5. Min query for the Enrollment table
select min(totalcreditos) as minimum_total_credits
from tbl_matricula;
go


-- 6. Min query for the Enrollment Detail table
select min(notalfinal) as minimum_final_grade
from tbl_detallematricula;
go


--MAX--
-- Maximum queries for all database tables

use db_matricula_universitaria
go


-- 1. Max query for the Career table
select max(idcarrera) as maximum_career_id
from tbl_carrera;
go


-- 2. Max query for the Professor table
select max(idprofesor) as maximum_professor_id
from tbl_profesor;
go


-- 3. Max query for the Course table
select max(costo) as maximum_course_cost
from tbl_curso;
go


-- 4. Max query for the Student table
select max(idestudiante) as maximum_student_id
from tbl_estudiante;
go


-- 5. Max query for the Enrollment table
select max(totalcreditos) as maximum_total_credits
from tbl_matricula;
go


-- 6. Max query for the Enrollment Detail table
select max(notalfinal) as maximum_final_grade
from tbl_detallematricula;
go


--INNER JOIN--

-- Inner join queries for all database tables

use db_matricula_universitaria
go


-- 1. Inner join query for the Career and Student tables
select 
c.idcarrera,
c.nombre as carrera,
e.nombre as estudiante,
e.apellido
from tbl_carrera c
inner join tbl_estudiante e
on c.idcarrera = e.idcarrera;
go


-- 2. Inner join query for the Professor and Course tables
select 
p.idprofesor,
p.nombre as profesor,
p.apellido,
c.nombrecurso,
c.creditos
from tbl_profesor p
inner join tbl_curso c
on p.idprofesor = c.idprofesor;
go


-- 3. Inner join query for the Course and Enrollment Detail tables
select 
c.idcurso,
c.nombrecurso,
d.notalfinal,
d.aprobado
from tbl_curso c
inner join tbl_detallematricula d
on c.idcurso = d.idcurso;
go


-- 4. Inner join query for the Student and Enrollment tables
select 
e.idestudiante,
e.nombre,
e.apellido,
m.periodo,
m.estado
from tbl_estudiante e
inner join tbl_matricula m
on e.idestudiante = m.idestudiante;
go


-- 5. Inner join query for the Enrollment and Enrollment Detail tables
select 
m.idmatricula,
m.periodo,
m.estado,
d.notalfinal,
d.aprobado
from tbl_matricula m
inner join tbl_detallematricula d
on m.idmatricula = d.idmatricula;
go


-- 6. Inner join query for the Complete enrollment information
select 
e.nombre as estudiante,
e.apellido,
c.nombre as carrera,
m.periodo,
cu.nombrecurso,
d.notalfinal
from tbl_estudiante e
inner join tbl_carrera c
on e.idcarrera = c.idcarrera
inner join tbl_matricula m
on e.idestudiante = m.idestudiante
inner join tbl_detallematricula d
on m.idmatricula = d.idmatricula
inner join tbl_curso cu
on d.idcurso = cu.idcurso;
go

--LEFT JOIN--

-- Left join queries for all database tables

use db_matricula_universitaria
go


-- 1. Left join query for the Career and Student tables
select 
c.idcarrera,
c.nombre as carrera,
e.nombre as estudiante,
e.apellido
from tbl_carrera c
left join tbl_estudiante e
on c.idcarrera = e.idcarrera;
go


-- 2. Left join query for the Professor and Course tables
select 
p.idprofesor,
p.nombre as profesor,
p.apellido,
c.nombrecurso,
c.creditos
from tbl_profesor p
left join tbl_curso c
on p.idprofesor = c.idprofesor;
go


-- 3. Left join query for the Course and Enrollment Detail tables
select 
c.idcurso,
c.nombrecurso,
d.notalfinal,
d.aprobado
from tbl_curso c
left join tbl_detallematricula d
on c.idcurso = d.idcurso;
go


-- 4. Left join query for the Student and Enrollment tables
select 
e.idestudiante,
e.nombre,
e.apellido,
m.periodo,
m.estado
from tbl_estudiante e
left join tbl_matricula m
on e.idestudiante = m.idestudiante;
go


-- 5. Left join query for the Enrollment and Enrollment Detail tables
select 
m.idmatricula,
m.periodo,
m.estado,
d.notalfinal,
d.aprobado
from tbl_matricula m
left join tbl_detallematricula d
on m.idmatricula = d.idmatricula;
go


-- 6. Left join query for the complete enrollment information
select 
e.nombre as estudiante,
e.apellido,
c.nombre as carrera,
m.periodo,
cu.nombrecurso,
d.notalfinal
from tbl_estudiante e
left join tbl_carrera c
on e.idcarrera = c.idcarrera
left join tbl_matricula m
on e.idestudiante = m.idestudiante
left join tbl_detallematricula d
on m.idmatricula = d.idmatricula
left join tbl_curso cu
on d.idcurso = cu.idcurso;
go



--RIGHT JOIN--
-- Right join queries for all tables in the database

use db_matricula_universitaria
go


-- 1. right join query for the career table
select 
    tbl_estudiante.nombre,
    tbl_estudiante.apellido,
    tbl_carrera.nombre as carrera,
    tbl_carrera.facultad
from tbl_estudiante
right join tbl_carrera
on tbl_estudiante.idcarrera = tbl_carrera.idcarrera;
go


-- 2. right join query for the professor table
select 
    tbl_curso.nombrecurso,
    tbl_curso.creditos,
    tbl_profesor.nombre,
    tbl_profesor.apellido,
    tbl_profesor.especialidad
from tbl_curso
right join tbl_profesor
on tbl_curso.idprofesor = tbl_profesor.idprofesor;
go


-- 3. right join query for the course table
select 
    tbl_detallematricula.iddetalle,
    tbl_detallematricula.notalfinal,
    tbl_curso.nombrecurso
from tbl_detallematricula
right join tbl_curso
on tbl_detallematricula.idcurso = tbl_curso.idcurso;
go


-- 4. right join query for the student table
select 
    tbl_matricula.idmatricula,
    tbl_matricula.periodo,
    tbl_estudiante.nombre,
    tbl_estudiante.apellido
from tbl_matricula
right join tbl_estudiante
on tbl_matricula.idestudiante = tbl_estudiante.idestudiante;
go


-- 5. right join query for the enrollment table
select 
    tbl_detallematricula.iddetalle,
    tbl_detallematricula.notalfinal,
    tbl_matricula.periodo,
    tbl_matricula.estado
from tbl_detallematricula
right join tbl_matricula
on tbl_detallematricula.idmatricula = tbl_matricula.idmatricula;
go


-- 6. right join query for the enrollment detail table
select 
    tbl_detallematricula.iddetalle,
    tbl_detallematricula.notalfinal,
    tbl_curso.nombrecurso,
    tbl_curso.creditos
from tbl_detallematricula
right join tbl_curso
on tbl_detallematricula.idcurso = tbl_curso.idcurso;
go


-- SUBQUERY--

-- subqueries for all tables in the database

use db_matricula_universitaria
go


-- 1. subquery for the career table using where
select *
from tbl_carrera
where idcarrera = 
(
    select idcarrera
    from tbl_estudiante
    where nombre = 'Andrea'
);
go


-- 2. subquery for the professor table using in
select *
from tbl_profesor
where idprofesor in
(
    select idprofesor
    from tbl_curso
    where creditos = 4
);
go


-- 3. subquery for the course table using not in
select *
from tbl_curso
where idcurso not in
(
    select idcurso
    from tbl_detallematricula
    where aprobado = 0
);
go


-- 4. subquery for the student table using in
select *
from tbl_estudiante
where idcarrera in
(
    select idcarrera
    from tbl_carrera
    where facultad = 'Facultad de Ingeniería'
);
go

-- 5. subquery for the enrollment table using in
select *
from tbl_matricula
where idestudiante in
(
    select idestudiante
    from tbl_estudiante
    where idcarrera in
    (
        select idcarrera
        from tbl_carrera
        where facultad = 'Facultad de Ciencias de la Salud'
    )
);
go


-- 6. subquery for the enrollment detail table using from
select *
from
(
    select 
        iddetalle,
        notalfinal,
        aprobado,
        idcurso,
        idmatricula
    from tbl_detallematricula
    where notalfinal >= 90
) as detalle_aprobado;
go


--VIEW--


--create a view showing enrollment report by student and career--
create view vw_carreras_estudiantes
as
select
c.idcarrera,
c.nombre AS carrera,
c.facultad,
e.nombre AS estudiante,
e.apellido
from tbl_carrera c
inner join tbl_estudiante e
on c.idcarrera = e.idcarrera;
go


select *
from vw_carreras_estudiantes;
go


-- create a view showing courses assigned to professors

create view vw_cursos_profesores
as
select
p.idprofesor,
p.nombre as nombre_profesor,
p.apellido as apellido_profesor,
p.especialidad,
c.idcurso,
c.nombrecurso,
c.creditos,
c.costo
from tbl_profesor p
inner join tbl_curso c
on p.idprofesor = c.idprofesor;
go

select *
from vw_cursos_profesores;
go

-- create a view showing student enrollment information

create view vw_estudiantes_matricula
as
select
e.idestudiante,
e.nombre as nombre_estudiante,
e.apellido,
e.correo,
m.idmatricula,
m.periodo,
m.totalcreditos,
m.estado
from tbl_estudiante e
inner join tbl_matricula m
on e.idestudiante = m.idestudiante;
go


select *
from vw_estudiantes_matricula;
go