create database AprendeSQLDb
go
-- Ejercicio 2
if object_id('agenda') is not null
drop table agenda;

create table agenda
(	
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)

);




insert into agenda (apellido, nombre, domicilio, telefono) values ('Moreno','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre, domicilio, telefono) values ('Torres','Juan','Avellaneda 135','4458787');

select * from agenda;

drop table agenda;
	 

--Ejercicio 3

create table libros
(
titulo varchar(20), 
autor varchar(30),
editorial varchar(15)

);
	 



insert into libros (titulo,autor,editorial)	values ('El aleph','Borges','Planeta');
insert into libros (titulo,autor,editorial) values ('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo,autor,editorial)	values ('Aprenda PHP','Mario Molina','Emece');

select * from libros;
	   
-- ejercicio 4

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas
(
nombre varchar(20),
actor varchar(20),
duracion int,
cantidad int
);



insert into peliculas (nombre, actor, duracion, cantidad)values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad)values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad)values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad)values ('Elsa y Fred','China Zorrilla',110,2);

select * from peliculas;

if object_id('empleados') is not null
drop table empleados;

create table empleados
(
nombre varchar(20),
documento varchar(8),
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);




insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)values ('Ana Acosta','24555666','f','Colon 134',650);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

select * from empleados;


-- Ejercicio 5

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas
(
titulo varchar(20),
actor varchar(20),
duracion int,
cantidad int
);



insert into peliculas (titulo, actor, duracion, cantidad)values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (titulo, actor, duracion, cantidad)values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (titulo, actor, duracion, cantidad)values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad)values ('Elsa y Fred','China Zorrilla',110,2);

select titulo,actor from peliculas;
select titulo,duracion from peliculas;
select titulo,cantidad from peliculas;

if object_id('empleados') is not null
drop table empleados;

create table empleados
(
nombre varchar(20),
documento varchar(8),
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);



insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)values ('Ana Acosta','24555666','f','Colon 134',650);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

select * from empleados;

select nombre,documento,domicilio from empleados;

select documento,sexo,sueldobasico from empleados;
	

--Ejercicio 6
--Inicio
if object_id('agenda') is not null
drop table agenda;


create table agenda
(	
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);



insert into agenda( apellido,nombre,domicilio,telefono) values('Acosta','Ana', 'Colon 123', '4234567');
insert into agenda(apellido,nombre,domicilio,telefono) values('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez', 'Hector', 'Salta 545', '4887788');
insert into agenda(apellido,nombre,domicilio,telefono) values( 'Lopez', 'Luis', 'Urquiza 333', '4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values( 'Lopez', 'Marisa', 'Urquiza 333', '4545454');

select * from agenda; 
select * from agenda where nombre = 'Marisa';
select nombre, domicilio from agenda where apellido = 'Lopez';

select nombre from agenda where telefono = '4545454';

if OBJECT_ID('libros') is not null 
drop table libros;

create table libros
(
titulo varchar(20), 
autor varchar(30),
editorial varchar(15)

);



insert into libros(titulo, autor, editorial) values('El aleph','Borges','Emece');
insert into libros(titulo, autor, editorial) values('Martin Fierro','Jose Hernandez','Emece');
insert into libros(titulo, autor, editorial) values('Martin Fierro','Jose Hernandez','Planeta');
insert into libros(titulo, autor, editorial) values('Aprenda PHP','Mario Molina','Siglo XXI');

select * from libros where autor = 'Borges';
select titulo from libros where editorial = 'Emece';
select editorial from libros where titulo = 'Martin Fierro';

--FIN

--Ejercicio 7

--INICIO primer ejericicio

if object_id('articulos') is not null
drop table articulos;

create table articulos
(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);



insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)values (5,'teclado','español Biswal',90,50);

select * from articulos where nombre = 'impresora';
select * from articulos where precio >= 400;
select codigo,nombre from articulos where cantidad < 30;
select nombre, descripcion from articulos where precio <> 100;

--FINN primer ejercicio 

--INICIO SEGUNDO EJERCICIO

if OBJECT_ID('peliculas') is not null 
drop table peliculas;


create table peliculas
(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',120,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',180,4);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia R.',90,1);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',80,2);

select * from peliculas where duracion <= 90;
select titulo from peliculas where actor <>'Tom Cruise';
select titulo,actor,cantidad from peliculas where cantidad >2;

--FIN SEGUNDO PROBLEMA

--Ejercicio 8
--INICIO PRIMER PROBLEMA

if object_id('agenda') is not null
drop table agenda;

create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono) values('Alvarez','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono) values('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono) values( 'Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono) values( 'Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono) values( 'Salas','Susana','Gral.Paz 1234','4123456');

delete from agenda where nombre = 'Juan';
delete from agenda where telefono = '4545454';
select * from agenda;
delete from agenda;
select * from agenda;
--FIN PRIMER PROBLEMA

--INICIO SEGUNDO PROBLEMA

if object_id('articulos') is not null
drop table articulos;

create table articulos
(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);



insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (5,'teclado','español Biswal',90,50);

delete from articulos where precio >= 500;
delete from articulos where nombre = 'impresora';
delete from articulos where codigo <> 4;
select * from articulos;

--FIN SEGUNDO PROBLEMA

--EJERCICIO 9 
--INICIO PRIMER PROBLEMA 

if object_id('agenda') is not null
drop table agenda;

create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono)values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)values ('Suarez','Susana','Gral. Paz 1234','4123456');

update agenda set nombre = 'Juan Jose' where nombre = 'Juan';
update agenda set telefono = '4445566' where telefono = '4545454';
update agenda set nombre = 'Juan Jose' where nombre = 'Juan';

select * from agenda;
--FIN PRIMER PROBLEMA

--INICIO SEGUNDO PROBLEMA


if object_id('libros') is not null
drop table libros;

create table libros 
(
titulo varchar(30),
autor varchar(20),
editorial varchar(15),
precio float
);

insert into libros (titulo, autor, editorial, precio)values ('El aleph','Borges','Emece',25.00);
insert into libros (titulo, autor, editorial, precio)values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros (titulo, autor, editorial, precio)values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros (titulo, autor, editorial, precio)values ('Cervantes y el quijote','Borges','Emece',25);
insert into libros (titulo, autor, editorial, precio)values ('Matematica estas ahi','Paenza','Siglo XXI',15);

select *from libros;

UPDATE libros set autor = 'Adrian Paenza' where autor = 'Paenza';
update libros set precio = 27 where autor = 'Mario Molina';
update libros set editorial = 'Emece S.A.' where editorial = 'Emece';

select * from libros;
--FIN SEGUNDO PROBLEMA

--Ejercicio 11 
--INICIO PRIMER PROBLEMA

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos
(
codigo integer not null,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer not null
);



insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)values(3,'Buscapina','Roche',null,200);

select *from medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)values(0,'','Bayer',15.60,0);

select *from medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(null,'Amoxidal jarabe','Bayer',25,120); -- es un error aproposito

select * from medicamentos where laboratorio = null;
select * from medicamentos where laboratorio = '';

select * from medicamentos where precio= null;
select * from medicamentos where precio = 0;

select * from medicamentos where laboratorio is not null;
select * from medicamentos where laboratorio <> '';

select * from medicamentos where precio  is not null;
select * from medicamentos where precio <> 0;

--FIN PRIMER PROBLEMA

--INICIO SEGUNDO PROBLEMA

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas
(
codigo int not null,
titulo varchar(40) not null,
actor varchar(20),
duracion int
);



insert into peliculas (codigo,titulo,actor,duracion)values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,titulo,actor,duracion)values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas (codigo,titulo,actor,duracion)values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas (codigo,titulo,actor,duracion)values(0,'Mision imposible 2','',150);
insert into peliculas (codigo,titulo,actor,duracion)values(4,'','L. Di Caprio',220);
insert into peliculas (codigo,titulo,actor,duracion)values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select *from peliculas;

insert into peliculas (codigo,titulo,actor,duracion) values(null,'Mujer bonita','R. Gere-J. Roberts',190); -- ERROR APROPOSITO

select * from peliculas where actor = null;
select * from peliculas where actor = ''

update peliculas set duracion = 120 where duracion is null;
update peliculas set actor = 'Desconocido' where actor is null;

select *from peliculas;

delete from peliculas where titulo = '';

select *from peliculas;

--FIN SEGUNDO PROBLEMA

--Ejercicio 12
--Inicio primer problema 

if object_id('libros') is not null
drop table libros;

create table libros
(
codigo int not null,
titulo varchar(40) not null,
autor varchar(20),
editorial varchar(15),
primary key(codigo)
);

insert into libros (codigo,titulo,autor,editorial)values (1,'El aleph','Borges','Emece');
insert into libros (codigo,titulo,autor,editorial)values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros (codigo,titulo,autor,editorial)values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

insert into libros (codigo,titulo,autor,editorial)values (2,'Aprenda PHP','Mario Molina','Nuevo Siglo'); -- error aproposito
insert into libros (codigo,titulo,autor,editorial)values (null,'Aprenda PHP','Mario Molina','Nuevo Siglo'); -- error aproposito

update libros set codigo = 1 where titulo = 'Martin Fierro';-- error aproposito

--FIN PRIMER PROBLEMA

--INICIO SEGUNDO PROBLEMA 

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos ---Error aproposito 
(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento),
primary key(legajo)
);


create table alumnos
(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
);



insert into alumnos (legajo,documento,nombre,domicilio)values('A233','22345345','Perez Mariana','Colon 234');
insert into alumnos (legajo,documento,nombre,domicilio)values('A567','23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (legajo,documento,nombre,domicilio)values('A567','23545345','Juan Lopez','Avellaneda 348'); -- Error aproposito
insert into alumnos (legajo,documento,nombre,domicilio)values('A567',null,'Juan Lopez','Avellaneda 348'); -- Error aproposito

--FIN SEGUNDO PROBLEMA 

--EJERCICIO 13
--INICIO PRIMER PROBLEMA

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos
(
codigo int identity,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);



insert into medicamentos (nombre, laboratorio,precio,cantidad)values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)values('Amoxidal 500','Bayer',15.60,100);
select *from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)values(1,'Amoxidal 500','Bayer',15.60,100); --erro aproposito

update medicamentos set codigo= 1 ; 
delete medicamentos where codigo = 3;

select *from medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad)values('Amoxilina 500','Bayer',15.60,100);

select *from medicamentos;

--fin primer problema

--INICIO SEGUNDO PROBLEMA

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas
(
codigo int identity,
titulo varchar(40),
actor varchar(20),
duracion int,
primary key(codigo)
);



insert into peliculas (titulo,actor,duracion)values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (titulo,actor,duracion)values('Mision imposible 2','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)values('La vida es bella','zzz',220);

select *from peliculas;

update peliculas set codigo = 2;

delete peliculas where titulo = 'La vida es bella';

insert into peliculas (titulo,actor,duracion)values('TITANIC','LEONARDO DICAPRIO',120);

select *from peliculas;
			   
--FIN SEGUNDO PROBLEMA

--Ejercicio 14 
--INICIO PRIMER PROBLEMA

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos
(
codigo integer identity(10,1),
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);

insert into medicamentos (nombre, laboratorio,precio,cantidad)values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)values('Amoxidal 500','Bayer',15.60,100);

select *from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)values(1,'Amoxidal 500','Bayer',15.60,100);--eror aproposito

set identity_insert medicamentos on;

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);--eror aproposito

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)values(11,'Amoxidal 500','Bayer',15.60,100);
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)values(2,'Amoxidal 500','Bayer',15.60,100);
				
select ident_seed('medicamentos');
select ident_incr('medicamentos');
--fin primer problema 

--INICIO segundo problema 

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas
(
codigo int identity (50,3),
titulo varchar(40),
actor varchar(20),
duracion int
);

insert into peliculas (titulo,actor,duracion)values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)values('Harry Potter y la camara secreta','Daniel R.',190);

select *from peliculas;

set identity_insert peliculas on;

insert into peliculas (codigo,titulo,actor,duracion)values(40,'Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (codigo,titulo,actor,duracion)values(60,'Harry Potter y la camara secreta','Daniel R.',190);

select IDENT_SEED('peliculas');
select IDENT_INCR('peliculas');

insert into peliculas (titulo,actor,duracion)values('Harry Potter y la camara secreta','Daniel R.',190);--ERROR APROPOSITO

set identity_insert peliculas off;

insert into peliculas (titulo,actor,duracion)values('EMOJI','Daniel R.',180);

select *from peliculas;

--FIN SEGUNDO PROBLEMA

--EJERCICIO 15
--INICIO PRIMER PROBLEMA

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos
(
legajo int identity,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30)
);

insert into alumnos (documento,nombre,domicilio)values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)values('25666777','Torres Ramiro','Dinamarca 209');

delete alumnos;

insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)values('25666777','Torres Ramiro','Dinamarca 209');
select *from alumnos;

truncate table alumnos;

insert into alumnos (documento,nombre,domicilio)values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)values('25666777','Torres Ramiro','Dinamarca 209');
select *from alumnos;

--FIN PRIMER PROBLEMA 

-- INICIO SEGUNDO PROBLEMA

if object_id('articulos') is not null
drop table articulos;

create table articulos
(
codigo integer identity,
nombre varchar(20),
descripcion varchar(30),
precio float
);

insert into articulos (nombre, descripcion, precio)values ('impresora','Epson Stylus C45',400.80);
insert into articulos (nombre, descripcion, precio)values ('impresora','Epson Stylus C85',500);

truncate table articulos;

insert into articulos (nombre, descripcion, precio)values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)values ('teclado','español Biswal',90);
select *from articulos;

delete articulos;


insert into articulos (nombre, descripcion, precio)values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)values ('teclado','español Biswal',90);
select *from articulos;

--FIN SEGUNDO PROBLEMA

--EJERCICIO 17
--INICIO PRIMER PROBLEMA


if object_id('autos') is not null
drop table autos;
create table autos
(
patente char(6),
marca varchar(20),
modelo char(4),
precio float,
primary key (patente)
);

insert into autos(patente,marca,modelo,precio) values('ACD123','Fiat 128','1970',15000);
insert into autos(patente,marca,modelo,precio) values('ACG234','Renault 11','1990',40000);
insert into autos(patente,marca,modelo,precio) values('BCD333','Peugeot 505','1990',80000);
insert into autos(patente,marca,modelo,precio) values('GCD123','Renault Clio','1990',70000);
insert into autos(patente,marca,modelo,precio) values('BCC333','Renault Megane','1998',95000);
insert into autos(patente,marca,modelo,precio) values('BVF543','Fiat 128','1975',20000);

select *from autos where modelo ='1990';

--fin primero problema

--INICIO SEGUNDO PROBLEMA

if object_id('clientes') is not null
drop table clientes;

create table clientes
(
documento char(8),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
telefono varchar (11)
);

insert into clientes(documento,apellido,nombre,domicilio,telefono) values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes(documento,apellido,nombre,domicilio) values('2333344','Perez','Ana','Colon 234');
insert into clientes(documento,apellido,nombre,domicilio,telefono) values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes(documento,apellido,nombre,domicilio,telefono) values('2533344','Juarez','Ana','Urquiza 444','4789900');

select *from clientes where apellido='Perez';
--FIN SEGUNDO PROBLEMA\

--Ejercicio 18
--INICIO PRIMER PROBLEMA

if object_id('cuentas') is not null
drop table cuentas;

create table cuentas
(
numCuenta smallint not null,
documento char(8) not null,
nombre varchar(30),
saldo float
primary key(numCuenta)
);


insert into cuentas(numCuenta,documento,nombre,saldo)values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(numCuenta,documento,nombre,saldo)values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(numCuenta,documento,nombre,saldo)values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(numCuenta,documento,nombre,saldo)values('3346','32111222','Susana Molina',1000);

select * from cuentas where saldo > 4000;
select numCuenta, saldo from cuentas where nombre = 'Juan Lopez';
select * from cuentas where saldo <0;

select *from cuentas where numCuenta>=3000;
--FIn primer problema

--INICIO SEGUNDO PROBLEMA

if object_id('empleados') is not null
drop table empleados;

create table empleados
(
nombre varchar(30),
documento char(8),
sexo char(1),
domicilio varchar(30),
sueldobasico decimal(7,2),
cantidadhijos tinyint
);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Juan Perez','22333444','m','Sarmiento 123',10000.8999,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)values ('Susana Molina','29000555','f','Salta 876',800.888,3);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)values ('Albert Lopez','29000555','f','Salta 876',8002222.88888888,3);--Error aproposito

select * from empleados where sueldobasico > 900;

select nombre from empleados where cantidadhijos = 3;

--FIn segundo problema

--EJERCICIO 19
--INICIO PRIMER PROBLEMA

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
apellido varchar(30),
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
fechanacimiento datetime
);

set dateformat 'dmy';

insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);--Error aproposito

select* from alumnos where fechaingreso < '1-1-91'; 
select *from alumnos where fechanacimiento is null;
insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);--error aproposito 

set dateformat 'mdy';

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);
--Fin del primero problema 

--Ejercicio 20 
--INICIO DEL PRIMER PROBLEMA 

if object_id('cuentas') is not null
drop table cuentas;

create table cuentas(
numero int identity,
documento char(8) not null,
nombre varchar(30),
saldo money
);

insert into cuentas values (1,'25666777','Juan Perez',2500.50);-- error aproposito 
insert into cuentas values ('25666777','Juan Perez',2500.50); 
insert into cuentas (documento,saldo) values ('25666788',987);
insert into cuentas (numero,documento,nombre,saldo) values (5,'28999777','Luis Lopez',34000);-- error aproposito 

insert into cuentas (numero,documento,nombre) values (3344,'28999777','Luis Lopez',34000);-- erro aproposito 
insert into cuentas (nombre, saldo)values ('Luis Lopez',34000);-- erro aproposito 
  
select *from libros;

-- FIN primer problema 

--Ejercicio 21 
--INICIO Primero Problema 

if object_id('visitantes') is not null
drop table visitantes;

create table visitantes
(
nombre varchar(30),
edad tinyint,
sexo char(1) default 'f',
domicilio varchar(30),
ciudad varchar(20) default 'Cordoba',
telefono varchar(11),
mail varchar(30) default 'no tiene',
montocompra decimal (6,2)
);




insert into visitantes (nombre, domicilio, montocompra) values ('Susana Molina','Colon 123',59.80);

insert into visitantes (nombre, edad, ciudad, mail) values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');

select *from visitantes;

insert into visitantes values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);


insert into visitantes default values;

select *from visitantes;

--Ejercicio 22
--Inicio 

if object_id ('articulos') is not null
drop table articulos;

create table articulos(
codigo int identity,
nombre varchar(20),
descripcion varchar(30),
precio smallmoney,
cantidad tinyint default 0,
primary key (codigo)
);

insert into articulos (nombre, descripcion, precio,cantidad)
values ('impresora','Epson Stylus C45',400.80,20);
insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C85',500);
insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio,cantidad)
values ('teclado','ingles Biswal',100,50);

update articulos set precio=precio+(precio*0.15);

select *from articulos;

select nombre+','+descripcion
from articulos;

update articulos set cantidad=cantidad-5
where nombre='teclado';

select *from articulos;

--fin

--Ejercicio 23 
-- INICIO

if object_id ('libros') is not null
drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio) values('El aleph','Borges','Emece',25);
insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad) values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select titulo, autor,editorial,precio,cantidad, precio*cantidad as 'monto total' from libros;

select titulo,autor,precio, precio*0.1 as descuento,precio-(precio*0.1) as 'precio final' from libros where editorial='Emece';

select titulo+'-'+autor as "Título y autor" from libros;

--EJERCICIO 24

 if object_id ('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30) not null,
  apellido varchar(20) not null,
  documento char(8),
  fechanacimiento datetime,
  fechaingreso datetime,
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
 insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
 insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
 insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
 insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

 select nombre+space(1)+upper(apellido) as nombre,
  stuff(documento,1,0,'DNI Nº ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo from empleados;

 select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

 select nombre,apellido from empleados
  where datename(month,fechanacimiento)='october';

 select nombre,apellido from empleados
  where datepart(year,fechaingreso)=2000;  

  --EJERCICIO 25
  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 select *from visitas
  order by fecha desc;

 select nombre,pais,datename(month,fecha)
  from visitas
  order by pais,datename(month,fecha) desc;

 select nombre,mail,
  datename(month,fecha) mes,
  datename(day,fecha) dia,
  datename(hour,fecha) hora
  from visitas
  order by 3,4,5;

 select mail, pais
  from visitas
  where datename(month,fecha)='October'
  order by 2;

  --EJERCICIO 26
   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250); 

 select codigo,nombre
  from medicamentos
  where laboratorio='Roche' and
  precio<5;

 select * from medicamentos
  where laboratorio='Roche' or
  precio<5;

 select * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

 select * from medicamentos
  where laboratorio='Bayer' and
  not cantidad=100;

 delete from medicamentos
  where laboratorio='Bayer' and
  precio>10;

 update medicamentos set cantidad=200
  where laboratorio='Roche' and
  precio>5;

 delete from medicamentos
  where laboratorio='Bayer' or
  precio<3;

  --EJERCICIO 27
   if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int identity,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion tinyint,
  primary key (codigo)
 );

 insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',null);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita',null,120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo)
  values('Un oso rojo');

 select *from peliculas
  where actor is null;

 update peliculas set duracion=0
  where duracion is null;

 delete from peliculas
  where actor is null and
  duracion=0;

 select * from peliculas;

 --EJERCICIO 28
  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fechayhora datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
 insert into visitas (nombre,mail,pais)
  values ('Federico1','federicogarcia@xaxamail.com','Argentina');

 select *from visitas
  where fechayhora between '2006-09-12' and '2006-10-11';

 select *from visitas
  where numero between 2 and 5;

  --EJERCICIO 29
   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01');
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01');
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01');
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01');
 insert into medicamentos 
  values('Bayaspirina','Bayer',2.10,150,'2009-12-01'); 
 insert into medicamentos 
  values('Amoxidal jarabe','Bayer',5.10,250,'2010-10-01'); 

 select nombre,precio from medicamentos
  where laboratorio in ('Bayer','Bago');

 select *from medicamentos
  where cantidad between 1 and 5;

 select *from medicamentos
  where cantidad in (1,2,3,4,5);

  --EJERCICIO 30

   if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

 select *from empleados
  where nombre like '%Perez%';

 select *from empleados
  where domicilio like 'Co%8%';

 select *from empleados
  where documento like '%[02468]';

 select *from empleados
  where documento like '[^13]%' and
  nombre like '%ez';

 select nombre from empleados
  where nombre like '%[yj]%';

 select nombre,seccion from empleados
  where seccion like '[SG]_______';

 select nombre,seccion from empleados
  where seccion not like '[SG]%';

 select nombre,sueldo from empleados
  where sueldo not like '%.00';

 select *from empleados
  where fechaingreso like '%1990%';

  --EJERCICIO 31
  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2009-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2009-12-15',null); 

 select count(*)
  from medicamentos;

 select count(laboratorio)
   from medicamentos;

 select count(precio) as 'Con precio',
  count(cantidad) as 'Con cantidad'
  from medicamentos;

 select count(precio)
  from medicamentos
  where laboratorio like 'B%';

 select count(numerolote) from medicamentos;

 --EJERCICIO 32
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);

 select count(*)
  from empleados;

 select count(sueldo)
  from empleados
  where seccion='Secretaria';

 select max(sueldo) as 'Mayor sueldo',
  min(sueldo) as 'Menor sueldo'
  from empleados;

 select max(cantidadhijos)
  from empleados
  where nombre like '%Perez%';

 select avg(sueldo)
  from empleados;

 select avg(sueldo)
  from empleados
  where seccion='Secretaria';

 select avg(cantidadhijos)
  from empleados
  where seccion='Sistemas';

  --EJERCICIO 33
  if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 insert into visitantes
  values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
 insert into visitantes
  values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
 insert into visitantes
  values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
 insert into visitantes (nombre, edad,sexo,telefono, mail)
  values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
 insert into visitantes (nombre, ciudad, montocompra)
  values ('Alejandra Gonzalez','La Falda',280.50);
 insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
  values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
 insert into visitantes
  values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
 insert into visitantes
  values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

 select ciudad, count(*)
  from visitantes
  group by ciudad;

 select ciudad, count(telefono)
  from visitantes
  group by ciudad;

 select sexo, sum(montocompra)
  from visitantes
  group by sexo;

 select sexo,ciudad,
  max(montocompra) as mayor,
  min(montocompra) as menor
  from visitantes
  group by sexo,ciudad;

 select ciudad,
  avg(montocompra) as 'promedio de compras'
  from visitantes
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by all ciudad;

  --EJERCICIO 34
  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  telefono varchar(11),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia;

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia
  having count(*)>1;

 select ciudad, count(*)
  from clientes
  where domicilio like '%San Martin%'
  group by all ciudad
  having count(*)<2 and
  ciudad <> 'Cordoba';

  --EJERCICIO 35
   if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

 select distinct provincia from clientes;

 select count(distinct provincia) as cantidad
  from clientes;

 select distinct ciudad from clientes;

 select count(distinct ciudad) from clientes;

 select distinct ciudad from clientes
  where provincia='Cordoba';

 select provincia,count(distinct ciudad)
  from clientes
  group by provincia;

  --EJERCICIO 36

   if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia',null,'Administracion');

 select top 5 *from empleados;

 select top 4 nombre,seccion
  from empleados
  order by seccion;

 select top 4 with ties nombre,seccion
  from empleados
  order by seccion;

 select top 4 nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

 select top 4 with ties nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

  --EJERCICIO 37
   if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 alter table vehiculos
 add constraint CK_vehiculos_tipo
 check (tipo in ('a','m'));

 alter table vehiculos
  add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 alter table vehiculos
  add constraint CK_vehiculos_patente_patron
  check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

 alter table vehiculos
  add constraint PK_vehiculos_patentellegada
  primary key(patente,horallegada);

 insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);

 insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);

 

 alter table vehiculos
  drop DF_vehiculos_tipo;

 

 alter table vehiculos
  drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

 

 --EJERCICIO 38
 if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  order by p.nombre;

 select c.nombre,domicilio,ciudad
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  where p.nombre='Santa Fe';

  --EJERCICIO 39

  if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';

  --EJERCICIO 40
    if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by ciudad;

  --EJERCICIO 41
   if (object_id('deportes')) is not null
  drop table deportes;
 if (object_id('inscriptos')) is not null
  drop table inscriptos;
 create table deportes(
  codigo tinyint identity,
  nombre varchar(30),
  profesor varchar(30),
  primary key (codigo)
 );
 create table inscriptos(
  documento char(8),
  codigodeporte tinyint not null,
  matricula char(1) --'s'=paga 'n'=impaga
 );

 insert into deportes values('tenis','Marcelo Roca');
 insert into deportes values('natacion','Marta Torres');
 insert into deportes values('basquet','Luis Garcia');
 insert into deportes values('futbol','Marcelo Roca');
 
 insert into inscriptos values('22222222',3,'s');
 insert into inscriptos values('23333333',3,'s');
 insert into inscriptos values('24444444',3,'n');
 insert into inscriptos values('22222222',2,'s');
 insert into inscriptos values('23333333',2,'s');
 insert into inscriptos values('22222222',4,'n'); 
 insert into inscriptos values('22222222',5,'n'); 

 select documento,d.nombre,matricula
  from inscriptos as i
  join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from deportes as d
  right join inscriptos as i
  on codigodeporte=codigo;

 select nombre
  from deportes as d
  left join inscriptos as i
  on codigodeporte=codigo
  where codigodeporte is null;

 select documento
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo
  where codigo is null;

 select documento,nombre,profesor,matricula
  from inscriptos as i
  full join deportes as d
  on codigodeporte=codigo; 

  --EJERCICIO 42
  if object_id('mujeres') is not null
  drop table mujeres;
 if object_id('varones') is not null
  drop table varones;
 create table mujeres(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );
 create table varones(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );

 insert into mujeres values('Maria Lopez','Colon 123',45);
 insert into mujeres values('Liliana Garcia','Sucre 456',35);
 insert into mujeres values('Susana Lopez','Avellaneda 98',41);

 insert into varones values('Juan Torres','Sarmiento 755',44);
 insert into varones values('Marcelo Oliva','San Martin 874',56);
 insert into varones values('Federico Pereyra','Colon 234',38);
 insert into varones values('Juan Garcia','Peru 333',50);

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad>40 and
  v.edad>40;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad-v.edad between -10 and 10;

  --EJERCICIO 43
   if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 insert into inscriptos values ('26666666',0,'2006','s');

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';

  --EJERCICIO 44
  if object_id('clientes') is not null
  drop table clientes;
 if object_id('proveedores') is not null
  drop table proveedores;
 if object_id('empleados') is not null
  drop table empleados;

 create table proveedores(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table clientes(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table empleados(
  documento char(8) not null,
  nombre varchar(20),
  apellido varchar(20),
  domicilio varchar(30),
  primary key(documento)
 );

 insert into proveedores values('Bebida cola','Colon 123');
 insert into proveedores values('Carnes Unica','Caseros 222');
 insert into proveedores values('Lacteos Blanca','San Martin 987');
 insert into clientes values('Supermercado Lopez','Avellaneda 34');
 insert into clientes values('Almacen Anita','Colon 987');
 insert into clientes values('Garcia Juan','Sucre 345');
 insert into empleados values('23333333','Federico','Lopez','Colon 987');
 insert into empleados values('28888888','Ana','Marquez','Sucre 333');
 insert into empleados values('30111111','Luis','Perez','Caseros 956');

 select nombre, domicilio from proveedores
  union
  select nombre, domicilio from clientes
   union
   select (apellido+' '+nombre), domicilio from empleados;

 select nombre, domicilio, 'proveedor' as categoria from proveedores
  union
  select nombre, domicilio, 'cliente' from clientes
   union
   select (apellido+' '+nombre), domicilio , 'empleado' from empleados
  order by categoria;

  --EJERCICIO 45
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  fechaingreso datetime
 );
 insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

 alter table empleados
  add sueldo decimal(5,2);

 

 alter table empleados
  add codigo int identity;

 alter table empleados
  add documento char(8) not null;

 alter table empleados
  add documento char(8) not null default '00000000';

 

 alter table empleados
  drop column sueldo;

 

 alter table empleados
  drop column documento;

 alter table empleados
  drop column codigo,fechaingreso;

 

 --EJERCICIO 46
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  legajo int not null,
  documento char(7) not null,
  nombre varchar(10),
  domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires',
  sueldo decimal(6,2),
  cantidadhijos tinyint default 0,
  primary key(legajo)
 );

 alter table empleados
  alter column nombre varchar(30);

 

 alter table empleados
  alter column sueldo decimal(6,2) not null;

 alter table empleados
  alter column documento char(8) not null;

 alter table empleados
  alter column legajo tinyint not null;

 insert into empleados values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
 insert into empleados values(2,'30000000',null,'Sucre 456','Cordoba',600,2);

 alter table empleados
  alter column nombre varchar(30) not null;

 delete from empleados where nombre is null;
 alter table empleados
  alter column nombre varchar(30) not null;

 alter table empleados
  alter column ciudad varchar(10);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column ciudad varchar(15);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column legajo int;

  --EJERCICIO 47
   if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  descripcion varchar(30),
  precio decimal(5,2) not null,
  cantidad smallint not null default 0,
  montototal as precio *cantidad
 );

 insert into articulos values('birome',1.5,100,150);

 insert into articulos values('birome',1.5,100);
 insert into articulos values('cuaderno 12 hojas',4.8,150);
 insert into articulos values('lapices x 12',5,200);

 select *from articulos;

 update articulos set precio=2 where descripcion='birome';
 select *from articulos;

 update articulos set cantidad=200 where descripcion='birome';
 select *from articulos;

 update articulos set montototal=300 where descripcion='birome';

 --EJERCICIO 48
 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  primary key(documento),
  constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
 );

 insert into alumnos values('30111111','Ana Algarbe',5.1);
 insert into alumnos values('30222222','Bernardo Bustamante',3.2);
 insert into alumnos values('30333333','Carolina Conte',4.5);
 insert into alumnos values('30444444','Diana Dominguez',9.7);
 insert into alumnos values('30555555','Fabian Fuentes',8.5);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70);

 select alumnos.*
  from alumnos
  where nota=
   (select max(nota) from alumnos);

 select titulo,autor, precio
  from libros
  where precio=
   (select titulo, max(precio) from libros);

 select alumnos.*,
 (select avg(nota) from alumnos)-nota as diferencia
  from alumnos
  where nota<
   (select avg(nota) from alumnos);

 update alumnos set nota=4
  where nota=
   (select min(nota) from alumnos);

 delete from alumnos
 where nota<
   (select avg(nota) from alumnos);

   --EJERCICIO 49
    if (object_id('ciudades')) is not null
   drop table ciudades;
  if (object_id('clientes')) is not null
   drop table clientes;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  codigociudad tinyint not null,
  primary key(codigo),
  constraint FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade,
 );

 insert into ciudades (nombre) values('Cordoba');
 insert into ciudades (nombre) values('Cruz del Eje');
 insert into ciudades (nombre) values('Carlos Paz');
 insert into ciudades (nombre) values('La Falda');
 insert into ciudades (nombre) values('Villa Maria');

 insert into clientes values ('Lopez Marcos','Colon 111',1);
 insert into clientes values ('Lopez Hector','San Martin 222',1);
 insert into clientes values ('Perez Ana','San Martin 333',2);
 insert into clientes values ('Garcia Juan','Rivadavia 444',3);
 insert into clientes values ('Perez Luis','Sarmiento 555',3);
 insert into clientes values ('Gomez Ines','San Martin 666',4);
 insert into clientes values ('Torres Fabiola','Alem 777',5);
 insert into clientes values ('Garcia Luis','Sucre 888',5);

 select nombre
  from ciudades
  where codigo in
   (select codigociudad
     from clientes
     where domicilio like 'San Martin %');

 select distinct ci.nombre
  from ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  where domicilio like 'San Martin%';

 select nombre
  from ciudades
  where codigo not in
   (select codigociudad
     from clientes
     where nombre like 'G%');

 select codigociudad
  from clientes
  where nombre like 'G%';

  --EJERCICIO 50
   if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select numero,nombre,deporte
  from socios as s
  join inscriptos as i
  on numerosocio=numero;

 select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
    from inscriptos as i
    where deporte='tenis');

 select deporte
  from inscriptos as i
  where numerosocio=1 and
  deporte= any
   (select deporte
    from inscriptos as i
    where numerosocio=2);

 select i1.deporte
  from inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  where i1.numerosocio=1 and
  i2.numerosocio=2;

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>any
   (select cuotas
    from inscriptos
    where numerosocio=1);

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>all
   (select cuotas
    from inscriptos
    where numerosocio=1);

 delete from inscriptos
  where numerosocio=any
   (select numerosocio 
    from inscriptos
    where cuotas=0);

	--EJERCICIO 51
	if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;

  --EJERCICIO 52
   if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select nombre
  from socios as s
  where not exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select s.*
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.cuotas=10);

	 --EJERCICIO 53
	  if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  año char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,año),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
 from deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 select s.nombre,td.deporte,td.profesor,td.año,td.matricula
  from socios as s
  join (select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
	from deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;

  --EJERCICIO 55
  if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  matricula char(1),-- 'n' o 's'
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis','s');
 insert into inscriptos values(1,'basquet','s');
 insert into inscriptos values(1,'natacion','s');
 insert into inscriptos values(2,'tenis','s');
 insert into inscriptos values(2,'natacion','s');
 insert into inscriptos values(2,'basquet','n');
 insert into inscriptos values(2,'futbol','n');
 insert into inscriptos values(3,'tenis','s');
 insert into inscriptos values(3,'basquet','s');
 insert into inscriptos values(3,'natacion','n');
 insert into inscriptos values(4,'basquet','n');

 update inscriptos set matricula='s'
  where numerosocio=
   (select numero
     from socios
     where documento='25555555');

 delete from inscriptos
  where numerosocio in
   (select numero
    from socios as s
    join inscriptos
    on numerosocio=numero
    where matricula='n');

	--EJERCICIO 56
	if object_id('facturas') is not null
  drop table facturas;
 if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
 );

 create table facturas(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  total decimal(6,2),
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade
 );

 insert into clientes values('Juan Lopez','Colon 123');
 insert into clientes values('Luis Torres','Sucre 987');
 insert into clientes values('Ana Garcia','Sarmiento 576');
 insert into clientes values('Susana Molina','San Martin 555');

 insert into facturas values(1200,'2007-01-15',1,300);
 insert into facturas values(1201,'2007-01-15',2,550);
 insert into facturas values(1202,'2007-01-15',3,150);
 insert into facturas values(1300,'2007-01-20',1,350);
 insert into facturas values(1310,'2007-01-22',3,100);

 if object_id ('clientespref') is not null
  drop table clientespref;
 create table clientespref(
  nombre varchar(30),
  domicilio varchar(30)
 );

 insert into clientespref
  select nombre,domicilio
   from clientes 
   where codigo in 
    (select codigocliente
     from clientes as c
     join facturas as f
     on codigocliente=codigo
     group by codigocliente
     having sum(total)>500);

 select *from clientespref;
