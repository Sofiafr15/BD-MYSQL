CREATE DATABASE SuenoFamiliares;

--Crea las tablas necesarias que contengan la información almacenada como es debido--
CREATE TABLE familia (
    nombre VARCHAR(55) NOT NULL,
    apellido VARCHAR(55) NOT NULL,
    parentesco VARCHAR(55) NOT NULL,
);

CREATE TABLE sueno (
    tiposueno VARCHAR(55) NOT NULL,
    duracionsueno INT(2) NOT NULL,
    protagonista TINYINT(2) NOT NULL
);

--Añadir datos--
INSERT INTO familia (nombre, apellido, parentesco) 
VALUES 
("Oana", "Vázquez", "prima"),
("Martin", "Vázquez", "padre"),
("María", "López", "madre");

INSERT INTO sueno (tiposueno, duracionsueno, protagonista)
VALUES 
("sueño", 1, 1),
("sueño", 2, 1),
("pesadilla", 1, 0),
("pesadilla", 3, 1),
("sueño", 2, 1),
("pesadilla", 2, 1);

--Altera las tablas para que tengan una columna “id” y que sea clave primaria y autoincremental-- 
ALTER TABLE familia
ADD COLUMN id INT(2) PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE sueno
ADD COLUMN idsueno INT(2) PRIMARY KEY AUTO_INCREMENT;

--Muestra los datos de los familiares que tienen una “a” como segunda letra y terminen en “ez”--
SELECT apellido
FROM familia
WHERE apellido LIKE "_a%ez";

--Muestra los sueños en los que no hay protagonista--
SELECT *
FROM sueno
WHERE protagonista= 0;

--Muestra los datos de los familiares que sean “madre” y muestra también los datos de Oana.(1 punto). 
SELECT *
FROM familia
WHERE parentesco LIKE "madre" OR nombre LIKE "Oana";

--Inserta una columna “edad” después de la columna “apellido”--
ALTER TABLE familia
ADD COLUMN edad INT(2) NOT NULL AFTER apellido;

--Eliminar la columna “parentesco”--
ALTER TABLE familia
DROP COLUMN parentesco;

--Cambia la columna “tipoSueño” para que se llame “sueñoPesadila” y haz que sea un enumerado que acepte los valores “sueño” o “pesadilla”. 
--En caso de haber hecho un enumerado desde el principio, hacer que sea de tipo cadena de texto--
ALTER TABLE sueno
RENAME COLUMN tiposueno TO suenopesadilla;

ALTER TABLE sueno
MODIFY COLUMN suenopesadilla TINYINT(2) NOT NULL;

--Muestra los sueños que sean “pesadilla” y que tengan duración de sueño de 1, 2, 3 y 6 minutos y que sean “protagonista”--
SELECT *
FROM sueno
WHERE suenopesadilla LIKE "pesadilla" AND duracionsueno IN(1,2,3,6) AND protagonista = 1;