--CREAR TABLA--
CREATE TABLE profesores (
Nombre VARCHAR(255) NOT NULL,
Edad INT(2) NOT NULL,
Email VARCHAR(255) NOT NULL,
Especialidad VARCHAR(25) NOT NULL
);

--INSERTAR VALORES--
INSERT INTO profesores (Nombre, Edad, Email, Especialidad)
VALUES ("Manuel Rico López", 38, "manuelrico@gmail.com", "Informática");

INSERT INTO profesores (Nombre, Edad, Email, Especialidad)
VALUES ("Jesús Pérez Roca", 42, "jesus@gmail.com", "Informática");

INSERT INTO profesores (Nombre, Edad, Email, Especialidad)
VALUES ("Eva Castro Pedreira", 40, "eva@hotmail.com", "Derecho");

INSERT INTO profesores (Nombre, Edad, Email, Especialidad)
VALUES ("Jose Antonio Pereira Suárez", 42, "jose@liceolapaz.net", "Informática");

INSERT INTO profesores (Nombre, Edad, Email, Especialidad)
VALUES ("Begoña Cambeiro Núñez", 42, "begoña@gmail.com", "Informática");

--AÑADIR COLUMNAS DE "APELLIDO 1" Y "APELLIDO2"--
ALTER TABLE profesores
ADD COLUMN Apellido1 VARCHAR(50) NOT NULL AFTER Nombre;

ALTER TABLE profesores
ADD COLUMN Apellido2 VARCHAR(50) NULL AFTER Apellido1;

--ORDENAR DATOS UNA VEZ INTRODUCIDAS LAS DOS COLUMNAS ANTERIORES--*
UPDATE profesores
SET Apellido1 = "Rico", Apellido2 = "López"
WHERE id = 1;

UPDATE profesores
SET Apellido1 = "Pérez", Apellido2 = "Roca"
WHERE id = 2;

UPDATE profesores
SET Apellido1 = "Castro", Apellido2 = "Pedreira"
WHERE id = 3;

UPDATE profesores
SET Apellido1 = "Pereira", Apellido2 = "Suárez"
WHERE id = 4;

UPDATE profesores
SET Apellido1 = "Cambeiro", Apellido2 = "Núñez"
WHERE id = 5;

--CAMBIAR NOMBRES PARA QUE QUEDE ORDENADO--*
UPDATE profesores
SET Nombre = "Manuel"
WHERE id = 1;

UPDATE profesores
SET Nombre = "Jesús"
WHERE id = 2;

UPDATE profesores
SET Nombre = "Eva"
WHERE id = 3;

UPDATE profesores
SET Nombre = "Jose Antonio"
WHERE id = 4;

UPDATE profesores
SET Nombre = "Begoña"
WHERE id = 5;

--CAMBIAR NOMBRE DE LA COLUMNA "Email"--
ALTER TABLE profesores
CHANGE COLUMN Email Correoelectronico VARCHAR(155) NOT NULL;

--*CÓMO HACER UN UPDATE MÚLTIPLE--
UPDATE profesores
SET Nombre = "Jesús",
Apellido1 = "Pérez",
Apellido2 = "Roca"
WHERE id = 1;