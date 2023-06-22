CREATE DATABASE ventas_prod;
USE ventas_prod;

create table `cliente`(
	`id_cliente` INT NOT NULL PRIMARY KEY auto_increment,
    `nombre` VARCHAR (45) ,
    `direccion` VARCHAR (45),
    `telefono` VARCHAR (45),
    `ciudad` VARCHAR (45)
)ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

insert into `cliente` values ("1","Juan", "Guadalajara 4545","156494789","buenos aires");
insert into `cliente` values ("2","Esteban", "Mexico 4545","156494456","buenos aires");
insert into `cliente` values ("3","Eugenia", "Haiti 4545","156494978","buenos aires");
insert into `cliente` values ("4","Hernan", "Av. de los incas 5315","159548485","buenos aires");
insert into `cliente` values ("5","Camila", "Paraguay 5978","156454545","buenos aires");
insert into `cliente` values ("6","Florencia", "Haiti 4545","156494978","buenos aires");
insert into `cliente` values ("7","Martin", "Aless 4978","156846978","buenos aires");
insert into `cliente` values ("8","Alessandra", "Cespedes 1549","15566548","buenos aires");
insert into `cliente` values ("9","Martin", "Haiti 4545","156494978","buenos aires");
insert into `cliente` values ("10","Alana", "Haiti 7800","1532469812","buenos aires");

create table `producto`(
id_producto INT NOT NULL PRIMARY KEY auto_increment,
nombre VARCHAR(45),
precio FLOAT(6,2),
stock INT
)ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

# id , nombre, precio
insert into `producto` (nombre,precio,stock) values ("mesa de jardin","9000","25");
insert into `producto` (nombre,precio,stock) values ("mate listo","500","30");
insert into `producto` (nombre,precio,stock) values ("computadora","86000","50");
insert into `producto` (nombre,precio,stock) values ("mouse Asus","1200","100");
insert into `producto` (nombre,precio,stock) values ("auriculares con cable","600","200");

create table `venta`(
	`id_factura` INT NOT NULL PRIMARY KEY auto_increment,
    `descripcion` VARCHAR (60) ,
    `cantidad` int (11),
    `precio` float (6,2),
    `id_producto` INT, 
    constraint`fk_producto_id_factura`
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto) 
    on delete cascade on update cascade
)ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;
# id, descrip, cant, precio


insert into `venta` (descripcion,cantidad,precio,id_producto) values ("mate listo","6","2500","2");
insert into `venta` (descripcion,cantidad,precio,id_producto) values ("mesa de jardin","1","9000","1");
insert into `venta` (descripcion,cantidad,precio,id_producto) values ("computadora","1","86000","3");
insert into `venta` (descripcion,cantidad,precio,id_producto) values ("mouse Asus","2","1200","4");
insert into `venta` (descripcion,cantidad,precio,id_producto) values ("mate listo","25","5000","2");

SELECT * FROM VENTA;

show tables;
describe `cliente`;
select * from `producto`;

SELECT id_cliente, nombre from cliente; 
SELECT id_factura, producto.nombre from venta,producto;

SELECT * from venta;

SELECT * FROM PRODUCTO

CREATE DATABASE escuela;
USE escuela;

CREATE TABLE IF NOT EXISTS `alumno` (
  `id_alumno` INT(6) NOT NULL auto_increment,
  `nombre_alumno` VARCHAR(45) NOT NULL ,
  `apellido_alumno` VARCHAR(45) NOT NULL,
  `fecha_nacimiento` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_alumno`)
  )
ENGINE = INNODB DEFAULT CHARSET = UTF8MB4;
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Galactico","Rodriguez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Oscar","Solari"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Joaquin","Barrientos"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Julieta","Venegas"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Ricardo","Montaner"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Luis","Miguel"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Oscar","Wilde"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Ricardo","Arjona"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Mercedes","Sosa"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Bruno","Perez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Joaquin","Sabina"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Alexis","Fernandez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Joaquin","Gonzalez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Kase","Orozco"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Joaquin","Lopez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Chizzo","Napoli"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Luis","Sabina"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Raul","Acosta"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Pity","Alvarez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Jose","Mendez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Thomas","Moreira"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Gustavo","Cerati"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Silvio","Rodriguez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Julieta","Gonzalez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Ambar","Cores"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Justin","Rodriguez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Camila","Mendez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Joaquin","Estevez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Julian","Carli"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Fernanda","Sanchez"); 
INSERT INTO `alumno` (nombre_alumno,apellido_alumno) VALUES("Tomas","Jay"); 

CREATE TABLE IF NOT EXISTS `profesor` (
  `id_profesor` INT(6) NOT NULL auto_increment,
  `nombre_prof` VARCHAR(45) ,
  `apellido_prof` VARCHAR(45),
  `nif_p` INT,
  `especialidad` VARCHAR(45),
  `telefono` VARCHAR(45),
  PRIMARY KEY (`id_profesor`))
ENGINE = InnoDB DEFAULT CHARSET = UTF8MB4;

INSERT INTO `Profesor` (nombre_prof,apellido_prof) VALUES("Elias","Aguilar");
INSERT INTO `Profesor` (nombre_prof,apellido_prof) VALUES("Fernando","Alfonso"); 
INSERT INTO `Profesor` (nombre_prof,apellido_prof) VALUES("Franco","Gomez"); 
INSERT INTO `Profesor` (nombre_prof,apellido_prof) VALUES("Luredes","Lopilato"); 
INSERT INTO `Profesor` (nombre_prof,apellido_prof) VALUES("Patricia","Catañera"); 


CREATE TABLE IF NOT EXISTS `asignatura` (
  `id_asignatura` INT(6) NOT NULL auto_increment,
  `nombre` VARCHAR(45) ,
  `alumno_id_alumno` INT ,
  `profesor_id_profesor` INT,
  PRIMARY KEY (`id_asignatura`),
  CONSTRAINT `fk_asignatura_alumno`
    FOREIGN KEY (`alumno_id_alumno`)
    REFERENCES `alumno` (`id_alumno`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_asignatura_profesor1`
    FOREIGN KEY (`profesor_id_profesor`)
    REFERENCES `profesor`(`id_profesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET = UTF8MB4;

INSERT INTO `asignatura`(nombre,alumno_id_alumno,profesor_id_profesor) VALUES("Lengua","1","1"); 
INSERT INTO `asignatura`(nombre,alumno_id_alumno,profesor_id_profesor) VALUES("Matematica","2","2");
INSERT INTO `asignatura`(nombre,alumno_id_alumno,profesor_id_profesor) VALUES("Biología","3","3");
INSERT INTO `asignatura`(nombre,alumno_id_alumno,profesor_id_profesor) VALUES("Ciencias sociales","4","4");  
INSERT INTO `asignatura`(nombre,alumno_id_alumno,profesor_id_profesor) VALUES("Arte","5","5");



SELECT * FROM alumno;
SELECT * FROM asignatura;
show tables;
describe alumno;
SELECT nombre_prof,apellido_prof from profesor ;

SELECT COUNT(nombre_alumno),asignatura.nombre FROM ALUMNO,ASIGNATURA WHERE id_asignatura=1;

SELECT COUNT(nombre_alumno),asignatura.nombre FROM ALUMNO,ASIGNATURA WHERE id_asignatura=3;

SELECT COUNT(nombre_alumno),asignatura.nombre FROM ALUMNO,ASIGNATURA;

SELECT nombre_alumno,id_alumno,asignatura.nombre FROM alumno,asignatura;

SELECT apellido_alumno, id_alumno FROM alumno;






