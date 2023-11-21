--ELIMINAR ALUMNOS CON ID 5,10 Y 13
DELETE FROM alumnos
WHERE id IN (5, 10, 13);

--INSERTAR DE NUEVO A LOS ALUMNOS SIN ASIGNARLES UN ID
INSERT INTO alumnos (nombre, apellido1, apellido2, edad, email, lugar)
VALUES ("Ana", "Caramés", "Canosa", 20, "anacaramescanosa@hotmail.com", "A Coruña"); --ALUMNO Nº 5--

INSERT INTO alumnos (nombre, apellido1, apellido2, edad, email, lugar)
VALUES ("Antonio", "Devesa", "Varela", 19, "antoniodevesavarela@gmail.com", "A Coruña"); --ALUMNO Nº 10--

INSERT INTO alumnos (nombre, apellido1, apellido2, edad, email, lugar)
VALUES ("Sofía", "Ferreiro", "Rodríguez", 19, "sofiaferreirorodriguez@yahoo.es", "A Coruña"); --ALUMNO Nº 13--

--VOLVER A COLOCAR A LOS ALUMNOS EN SUS POSICIONES ORIGINALES CON SUS CORRESPONDIENTES IDs
UPDATE alumnos
SET id = 5
WHERE id = 31;

UPDATE alumnos
SET id = 10
WHERE id = 32;

UPDATE alumnos
SET id = 13
WHERE id = 33;

--CREAR COLUMNA "CENTRO"--
ALTER TABLE alumnos
ADD COLUMN centro VARCHAR(50) NOT NULL;

--ASIGNAR A TODOS LOS ALUMNOS EL MISMO VALOR--
UPDATE alumnos
SET centro = "Liceo La Paz";

--CREAR TABLA "centros"--
CREATE TABLE centros (
id INT(2) PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
tipo VARCHAR(50) NOT NULL,
provincia VARCHAR(50) NOT NULL
);

--AÑADIR DATOS A LA TABLA "centros"--
INSERT INTO centros (nombre, tipo, provincia)
VALUES ("Liceo La Paz", "Concertado", "A Coruña");

INSERT INTO centros (nombre, tipo, provincia)
VALUES ("Obradoiro", "Privado", "A Coruña");

INSERT INTO centros (nombre, tipo, provincia)
VALUES ("Eusebio da Guarda", "Público", "A Coruña");