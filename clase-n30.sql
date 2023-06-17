-- COMENTARIOS

/*  HOLAAAAA*/

CREATE DATABASE Base_De_Datos_Prueba;

CREATE database IF NOT exists BASE_DE_DATOS_PRUEBA;

-- vOY ALLAMAR O HACER USO DE ESTA BBDD
USE BASE_DE_DATOS_PRUEBA;

-- eLEMINAR LA BBDD DROP 
DROP DATABASE base_de_datos_prueba;

DROP DATABASE IF EXISTS base_de_datos_prueba;

create table usuarios(
id_usuarios int primary key auto_increment,
nombre_usuario varchar(12) not null,
nick_usuario varchar (12) not null,
apellido_usuario varchar(15) not null,
edad tinyint not null
);

alter table usuarios rename to usuario;

alter table usuario change name nombre_usuarios varchar(50);

alter table usuario add ciudad varchar(12);

describe usuario;

-- eliminar todos los registros

truncate table usuario;

insert into usuario (id_usuarios, nombre_usuario,nick_usuario, apellido_usuario,edad,ciudad) value 
(000001, 'Sebastian', 'Sebas', 'Gonzalez', 18, "CABA"); 

select * from usuario;

insert into usuario (nombre_usuario,nick_usuario, apellido_usuario,edad,ciudad) values 
("Claudia", "Clau" , "Perez", 25, "CABA"), 
("Matias", "Zeta", "Rodriguez", 30, "Cordoba");