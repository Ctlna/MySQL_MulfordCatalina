-- #####################
-- ### DIA # 2 - Comandos Generales ###
-- #####################

-- Comando general para revisión de bases de datos creadas
show databases;

-- Crear base de datos

create database dia2;

-- Utilizar BBDD dia2

use dia2;

-- Crear tabla departamento
create table departamento (
    id int auto_increment primary key,
    nombre varchar(50) not null
);

-- Crear la tabla de profesor
create table profesor(
    id_profesor int primary key,
    id_departamento int not null,
    foreign key (id_profesor) references persona(id),
    foreign key (id_departamento) references departamento(id)
);

-- Crear tabla persona
create table persona(
    id int auto_increment primary key,
    nif varchar(9),
    nombre varchar(25) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar (50),
    ciudad varchar(25) not null,
    direccion varchar(50) not null,
    telefono varchar(9),
    fecha_nacimiento DATE not null,
    sexo enum('H','M') not null,
    tipo enum('profesor','alumno') not null
);

-- Crear tabla grado
create table grado(
    id int auto_increment primary key,
    nombre varchar(100) not null
);

-- curso esco tabla
create table curso_escolar(
    id int auto_increment primary key,
    anyo_inicio year(4) not null,
    anyo_fin year(4) not null
);

-- crear tabla asignatura
create table asignatura(
    id int auto_increment primary key,
    nombre varchar(100) not null,
    creditos float not null,
    tipo enum("a","b","c") not null,
    curso tinyint(3),
    id_profesor int(10),
    id_grado int(10),
    foreign key (id_profesor) references persona(id),
    foreign key (id_grado) references grado(id)
);

-- Crear la tabla de alumno se matricula
create table alum_matri(
    id_alumno int primary key,
    id_asignatura int not null,
    id_curso_escolar int not null,
    foreign key (id_alumno) references persona(id),
    foreign key (id_asignatura) references asignatura(id),
    foreign key (id_curso_escolar) references curso_escolar(id)
);

-- Desarrollado por Catalina Mulford Monroy / ID.1.097.490.150
