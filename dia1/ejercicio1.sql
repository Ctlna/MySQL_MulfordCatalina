-- #####################
-- ### EJERCICIO # 1 ###
-- #####################

-- Creacion de BBDD tienda
create database tienda;
-- Uso de BBDD tienda
use tienda;

-- Creacion tabla "Fabricante"
create table fabricante(
id int auto_increment primary key,
nombre varchar(100)
);

-- Mostrar
show tables;

-- Creacion tabla  "Producto"
create table producto(
id int auto_increment primary key,
nombre varchar(100),
precio decimal(10,2),
id_fabricante int,
foreign key (id_fabricante) references fabricante(id)
);

-- Insertar datos de fabricantes
insert into fabricante values (1,"Guantes Industriale");
insert into fabricante values (2,'MOTKA BGA');
insert into fabricante values (3,'Textil Fantasy Ltda');
insert into fabricante values (4,'Textiles Layla E U');
insert into fabricante values (5,'Textiles Cybertex S A S');
insert into fabricante values (6,'Textiles Y Prendas De Seguridad Sas');
insert into fabricante values (7,'Textiles La Nuestra S A S');
insert into fabricante values (8,'Calypso Bucaramanga Puerta del Sol');
insert into fabricante values (9,'ITEX INNOVACIONES TEXTILES BUCARAMANGA');
insert into fabricante values (10,'170 TEKS BUCARAMANGA CENTRO');

-- Insertar datos de productos
insert into producto values (12,'Guantes',52500,1);
insert into producto values (213,'Zapatos',90000,2);
insert into producto values (15,'Telas estampados',40300,3);
insert into producto values (17,'Uniformes',150000,6);
insert into producto values (28,'Tela impermeable',60600,5);
insert into producto values (61,'Pijama',100000,10);
insert into producto values (72,'Telas de a metro',20500,8);
insert into producto values (14,'Tela importada',160000,4);
insert into producto values (16,'Tela nacional',100000,9);
insert into producto values (33,'Moldes',10500,7);

-- Revisar todo
select * from fabricante;
-- Revisar todo de algo especifico
select * from fabricante where id=10;
-- Revisar algo especifico de una tabla
select id from producto;
-- Actualizar dato de x columna
update producto set nombre='Campusland' where id=213;
select * from producto;

-- Eliminar
delete from producto where id=213;
truncate producto;
select * from producto;

-- Desarrollado por Catalina Mulford / ID.1.097.490.150
