--CREAR TABLA--
CREATE TABLE alumnos (
id INT(2) PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido1 VARCHAR(50) NOT NULL,
apellido2 VARCHAR(50) NULL,
edad INT(2) NOT NULL,
email VARCHAR(255) NOT NULL,
lugar VARCHAR(25) NOT NULL
);

--INSERTAR VALORES--
INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 1, "Nicolás", "Álvarez", "Pérez", 18, "nicolasalvarezperez@hotmail.com", "Baio");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 2, "Jesús", "Ares", "Armesto", 19, "jesusaresarmesto@hotmail.com", "Oleiros");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 3, "José Manuel", "Blanco", "García", 20, "josemanuelblancogarcia@hotmail.com", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 4, "Adrián", "Canedo", "Bello",  18, "adriancanedobello@hotmail.com", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 5, "Ana", "Caramés", "Canosa", 20, "anacaramescanosa@hotmail.com", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 6, "Andrea", "Carracedo", "Caamaño", 19, "andreacarracedocaamaño@hotmail.com", "Sada");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 7, "Adrián", "Castro", "Beiro", 18, "adriancastrobeiro@gmail.com", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES ( 8, "Sabela", "Cobelo", "Losada", 20, "sabelacobelolosada@gmail.com", "Oleiros");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 9, "Diego", "Coello", "Morán", 22, "diegocoellomoran@gmail.com", "Lugo");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 10, "Antonio", "Devesa", "Varela", 19, "antoniodevesavarela@gmail.com", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 11, "Ángel", "Fernández", "Blanco", 18, "angelfernandezblanco@gmail.com", "Ourense");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 12, "Mateo", "Fernández", "Rivera", 19, "mateofernandezrivera@gmail.com", "Ourense");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 13, "Sofía", "Ferreiro", "Rodríguez", 19, "sofiaferreirorodriguez@gmail.com", "A Coruña"); --CORREO MAL ESCRITO--*

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 14, "Eloy", "García", "Martínez", 18, "eloygarciamartinez@yahoo.es", "Vigo");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 15, "Laura", "Lodeiro", "Casas", 20, "lauralodeirocasas@yahoo.es", "Vigo");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 16, "Manuel", "Loira", "Vázquez", 20, "manuelloiravazquez@yahoo.es", "Carballiño");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 17, "Eloy", "Lozano", "Barrios", 19, "eloylozanobarrios@yahoo.es", "Sada");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 18, "Nicolás", "Manteiga", "Camba", 18, "nicolasmanteigacamba@yahoo.es", "Carballo");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 19, "Alejandro", "Mejía", "González", 18, "alejandromejiagonzalez@hotmail.es", "Muros");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 20, "Isaías", "Quesada", "Vilariño", 18, "isaiasquesadavilariño@hotmail.es", "Cangas");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 21, "Elena", "Rodríguez", "Fustes", 18, "elenarodriguezfustes@hotmail.es", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 22, "Pablo", "Rodríguez", "Santos", 18, "pablorodriguezsantos@hotmail.es", "Cee");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 23, "Rubén", "Sampaio", "Calvo", 18, "rubensampaiocalvo@hotmail.es", "Laxe");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 24, "Alejandro", "Sánchez", "Cernadas", 18, "alejandrosanchezcernadas@hotmail.es", "Fisterra");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 25, "Daniel", "Sánchez", "Vázquez", 19, "danielsanchezvazquez@liceolapaz.net", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 26, "Jacobo", "Sánchez de Movellán", "Formoso", 19, "jacobosanchezdemovellanformoso@liceolapaz.net", "A Coruña");

INSERT INTO alumnos (id, nombre, apellido1, edad, email, lugar)
VALUES( 27, "Daniil", "Shumkin", 18, "daniilshumkin@liceolapaz.net", "Sada");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 28, "Xenxo", "Taboas", "Alonso", 19, "xenxotaboasalonso@liceolapaz.net", "Oleiros");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 29, "Paula Alejandra", "Vargas", "Silva", 19, "paulaalejandravargassilva@liceolapaz.net", "Mera");

INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES( 30, "Francisco", "Vázquez", "Zabalia", 18, "franciscovazquezzabalia@liceolapaz.net", "A Coruña");

--*CORREO MAL ESCRITO EN EL ALUMNO 13--
UPDATE alumnos
SET email = "sofiaferreirorodriguez@yahoo.es"
WHERE id = 13;

--BORRAR ALUMNOS 6, 16 Y 26--
DELETE FROM alumnos
WHERE id = 6;

DELETE FROM alumnos
WHERE id = 16;

DELETE FROM alumnos
WHERE id = 26;

--OTRA OPCIÓN DE BORRADO (MÁS RÁPIDA)--
DELETE FROM alumnos
WHERE id IN (6, 16, 26);

--VOLVER A INSERTARLOS
INSERT INTO alumnos (id, nombre, apellido1, apellido2, edad, email, lugar)
VALUES 
(6, "Andrea", "Carracedo", "Caamaño", 19, "andreacarracedocaamaño@hotmail.com", "Sada") --ALUMNO Nº 6--
(16, "Manuel", "Loira", "Vázquez", 20, "manuelloiravazquez@yahoo.es", "Carballiño") --ALUMNO Nº 16--
(26, "Jacobo", "Sánchez de Movellán", "Formoso", 19, "jacobosanchezdemovellanformoso@liceolapaz.net", "A Coruña"); --ALUMNO Nº 26--