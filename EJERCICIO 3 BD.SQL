--CREAR TABLA--
CREATE TABLE asignaturas (
id INT(2) PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
acronimo VARCHAR(5) NOT NULL,
horas INT(2) NOT NULL,
dificultad VARCHAR(50) NOT NULL,
profesor VARCHAR (150) NOT NULL
);

--INSERTAR VALORES--
INSERT INTO asignaturas (nombre, acronimo, horas, dificultad, profesor)
VALUES ("Bases de datos", "BBDD", 80, "Alta", "Manuel Rico López");

INSERT INTO asignaturas (nombre, acronimo, horas, dificultad, profesor)
VALUES ("Programación", "PROG", 90, "Alta", "Jesús Pérez Roca");

INSERT INTO asignaturas (nombre, acronimo, horas, dificultad, profesor)
VALUES ("Formación y orientación laboral", "FOL", 55, "Baja", "Eva Castro Pedreira");

INSERT INTO asignaturas (nombre, acronimo, horas, dificultad, profesor) --VALOR OMITIDO POR FALLO--*
VALUES ("Lenguaje de marcas", "LM", 60, "Baja", "Jesús Pérez Roca");

INSERT INTO asignaturas ( nombre, acronimo, horas, dificultad, profesor)
VALUES ("Sistemas y redes", "SYR", 70, "Media", "Jose Antonio Pereira Suárez");

INSERT INTO asignaturas (nombre, acronimo, horas, dificultad, profesor)
VALUES ("Entornos de desarrollo", "ENTD", 66, "Media", "Begoña Cambeiro Núñez");

--*SI SE OMITE UN VALOR, SE ARREGLA DE ESTA MANERA:--
UPDATE asignaturas
SET nombre = "Lenguaje de marcas", acronimo = "LM", horas = 60, dificultad = "Baja", profesor = "Jesús Pérez Roca"
WHERE id = 4;

UPDATE asignaturas
SET nombre = "Sistemas y Redes", acronimo = "SYR", horas = 70, dificultad = "Media", profesor = "Jose Antonio Pereira Suárez"
WHERE id = 5;

UPDATE asignaturas
SET nombre = "Entornos de desarrollo", acronimo = "ENTD", horas = 66, dificultad = "Media", profesor = "Begoña Cambeiro Núñez"
WHERE id = 6;

--DELIMITAR DIFICULTAD DE LAS ASIGNATURAS--
ALTER TABLE asignaturas
MODIFY COLUMN dificultad ENUM("Alta", "Media", "Baja");