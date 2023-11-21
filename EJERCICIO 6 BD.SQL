--CREAR BASE DE DATOS: "LIGA FC"--
CREATE DATABASE LIGAFC;

--CREAR TABLA "tEquipos"--
CREATE TABLE tEquipos (
    nombre VARCHAR(55) NOT NULL,
    localidad VARCHAR(55) NOT NULL,
    estadio VARCHAR(55) NOT NULL,
    presupuesto INT(12) NOT NULL,
    campeon BOOLEAN NOT NULL
);

--INSERTAR VALORES EN LA TABLA--
INSERT INTO tEquipos (nombre, localidad, estadio, presupuesto, campeon)
VALUES 
("F.C Barcelona", "Barcelona", "Spotify Camp Nou", 300000000, 1),
("R.Madrid", "Madrid", "Santiago Bernabeu", 500000000, 0),
("R.Sociedad", "San Sebastián", "Reale Arena", 60000000, 1),
("Athletic de Bilbao", "Bilbao", "San Mamés", 90000000, 1),
("R.Betis", "Sevilla", "Benito Villamarín", 6000000, 0),
("Athlético de Madrid", "Madrid", "Wanda Stadium", 250000000, 1),
("Osasuna", "Pamplona", "El Sadar", 30000000, 0),
("Villareal", "Villareal", "Estadio del la Cerámica", 50000000, 0),
("Rayo Vallecano", "Madrid", "Vallecas", 15000000, 0),
("Mallorca", "Mallorca", "Son Moix", 20000000, 0),
("Valladolid", "Valladolid", "Zorrilla", 15000000, 0),
("Valencia", "Valencia", "Mestalla", 100000000, 1),
("Girona", "Girona", "Montilivi", 15000000, 0),
("Almería", "Almería", "Juegos del Mediterraneo", 25000000, 0),
("Getafe", "Getafe", "Alfonso Pérez", 25000000, 0),
("Espanyol", "Barcelona", "RCDE Stadium", 30000000, 0),
("Sevilla", "Sevilla", "Sánchez Pizjuan", 99000000, 1),
("Celta", "Vigo", "Balaídos", 40000000, 0),
("Cádiz", "Cádiz", "Nuevo Mirandilla", 15000000, 0),
("Elche", "Elche", "Martínez Valero", 9000000, 0);

--AAGREGAR ID AUTO INCREMENTAL--
ALTER TABLE tEquipos
ADD COLUMN id INT(2) PRIMARY KEY AUTO_INCREMENT FIRST;

--CAMBIAR NOMBRE DE LA COLUMNA "LOCALIDAD" A "CIUDAD"--
ALTER TABLE tEquipos
RENAME COLUMN localidad TO ciudad;

UPDATE tEquipos
SET ciudad= "Castellón de la Plana"
WHERE ciudad= "Villareal";

--CREAR TABLA "tEstadios"--
CREATE TABLE tEstadios (
    id INT(2) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(55) NOT NULL,
    capacidad INT(10) NOT NULL
);

--INSERTAR VALORES EN LA TABLA--
INSERT INTO tEstadios(nombre, capacidad)
VALUES
("Spotify Camp Nou", 110000),
("Santiago Bernabeu", 99000),
("Reale Arena", 55000),
("San Mamés", 55000),
("Benito Villamarín", 40000),
("Wanda Stadium", 75000),
("El Sadar", 30000),
("Estado de la Cerámica", 25000),
("Vallecas", 20000);
("San Moix", 15000),
("Zorrilla", 18000),
("Mestalla", 55000),
("Montilivi", 17000),
("Juegos del Mediterráneo", 18000),
("Alfonso Pérez", 21000),
("RCDE Stadium", 25000),
("Sánchez Pizjuán", 60000),
("Balaídos", 19000),
("Nuevo Mirandilla", 12000),
("Martínez Valero", 11000);

--SITUAR COLUMNA "campeon" DE LA TABLA "tEquipos" A LA DERECHA DE "nombre--"
ALTER TABLE tEquipos
MODIFY COLUMN campeon TINYINT(2) NOT NULL AFTER nombre;

--ELIMINAR TABLA "tEquipos"--
DROP TABLE
tEquipos; 

--VOLVER A CREAR LA TABLA "tEquipos" Y DEJARLA COMO ESTABA ANTES DEL ENUNCIADO 10--

--CREAR TABLA "tLigas"--
CREATE TABLE tLigas (
    id INT(2) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(55) NOT NULL,
    pais VARCHAR(55) NOT NULL
);

--INSERTAR VALORES EN LA TABLA--
INSERT INTO tLigas (nombre, pais)
VALUES
("Liga BBVA", "España"),
("Premier", "Inglaterra"),
("Calcio", "Italia"),
("MLS", "EEUU"),
("Ligue 1", "Francia");

--HACER QUE LA TABLA PRESUPUESTO ACEPTE VALORES CON 2 DECIMALES--
ALTER TABLE tEquipos
MODIFY COLUMN presupuesto DECIMAL(12,2) NOT NULL;
