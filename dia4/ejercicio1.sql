-- #####################
-- ### EJERCICIO # 1 # Dia 4 ###
-- #####################

Create database Dia4;
use Dia4;

create table pais(
	id int auto_increment primary key not null,
    nombre varchar(20),
    continente varchar(50),
    poblacion int
);
create table idioma(
	id int auto_increment primary key not null,
	idioma varchar(50)
);
create table ciudad(
	id int auto_increment primary key not null,
    nombre varchar(20),
    id_pais int,
    foreign key(id_pais) references pais(id)
);
create table idioma_pais(
	id_idioma int not null,
    id_pais int not null,
    es_oficial tinyint(1),
    foreign key(id_idioma)references idioma(id),
    foreign key(id_pais) references pais(id)
);

-- Desarrollado por Catalina Mulford / ID.1.097.490.150
