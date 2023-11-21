--Alumnos con 18 años y que sean de A Coruña--
SELECT *
FROM alumnos
WHERE edad= 18 AND lugar LIKE "A Coruña";

--Alumnos con edades comprendidas entre 18 y 20 años, que sean de A Coruña, que estudien en el Liceo La Paz
--y los alumnos que tengan como nombre “Manuel”----
SELECT *
FROM alumnos
WHERE nombre LIKE "Manuel" AND (edad BETWEEN 18 AND 20 AND centro LIKE "Liceo La Paz" AND lugar LIKE "A Coruña");

--Alumnos que sean de A Coruña o de Lugo o de Cee, cuyo id sea mayor o igual a 10.--
SELECT *
FROM alumnos
WHERE id>= 10 AND lugar IN ("A Coruña", "Lugo", "Cee"); 

--Muestra los alumnos que tengan con segunda letra de nombre una “n” y que acaben en la letra “o”--
SELECT *
FROM alumnos
WHERE nombre LIKE "_n%o";

--Muestra la edad, el nombre y el primer apellido de los alumnos que tengan como cuenta de correo “Hotmail”--
SELECT edad, nombre, apellido1
FROM alumnos
WHERE email LIKE "%hotmail%";

--Inserta los valores de las edades de los alumnos--
UPDATE alumnos
SET edad = 18
WHERE id = 1;

UPDATE alumnos
SET edad = 24
WHERE id = 2;

UPDATE alumnos
SET edad = 26
WHERE id = 3;

UPDATE alumnos
SET edad = 18
WHERE id = 4;

UPDATE alumnos
SET edad = 24
WHERE id = 5;

UPDATE alumnos
SET edad = 18
WHERE id = 6;

UPDATE alumnos
SET edad = 21
WHERE id = 7;

UPDATE alumnos
SET edad = 31
WHERE id = 8;

UPDATE alumnos
SET edad = 33
WHERE id = 9;

UPDATE alumnos
SET edad = 23
WHERE id = 10;

UPDATE alumnos
SET edad = 17
WHERE id = 11;

UPDATE alumnos
SET edad = 19
WHERE id = 12;

UPDATE alumnos
SET edad = 17
WHERE id = 13;

UPDATE alumnos
SET edad = 18
WHERE id = 14;

UPDATE alumnos
SET edad = 21
WHERE id = 15;

UPDATE alumnos
SET edad = 25
WHERE id = 16;

UPDATE alumnos
SET edad = 19
WHERE id = 17;

UPDATE alumnos
SET edad = 20
WHERE id = 18;

UPDATE alumnos
SET edad = 20
WHERE id = 19;

UPDATE alumnos
SET edad = 19
WHERE id = 20;

UPDATE alumnos
SET edad = 18
WHERE id = 21;

UPDATE alumnos
SET edad = 18
WHERE id = 22;

UPDATE alumnos
SET edad = 18
WHERE id = 23;

UPDATE alumnos
SET edad = 19
WHERE id = 24;

UPDATE alumnos
SET edad = 29
WHERE id = 25;

UPDATE alumnos
SET edad = 18
WHERE id = 26;

UPDATE alumnos
SET edad = 19
WHERE id = 27;

UPDATE alumnos
SET edad = 22
WHERE id = 28;

UPDATE alumnos
SET edad = 24
WHERE id = 29;

UPDATE alumnos
SET edad = 23
WHERE id = 30;

--Añadir nuevos alumnos--
INSERT INTO alumnos (nombre, apellido1, apellido2, edad, email)
VALUES 
("Marcos", "Aller", "Amor", 20, "marcosalleramor@gmail.com"),
("Miguel", "Carballo", "Beltrán", 19, "miguelcarballobeltran@hotmail.com"),
("Julián", "Cortés", "Casal", 22, "juliancortescasal@gmail.com"),
("Miguel Ángel", "Darriba", "Uzal", 22, "miguelangelarribauzal@hotmail.es"),
("Iker", "Fernández", "Bonilla", 21, "ikerrfernandezbonilla@gmail.com"),
("Daniel", "Fernández", "Miranda", 18, "danielfernandezmiranda@yahoo.es"),
("Xián", "Ferreiro", "López", 19, "xianferreirolopez@gmail.com"),
("Sergio", "González", "García", 20, "sergiogonzalezgarcia@gmail.com"),
("Jorge", "González", "Lastra", 18, "jorgegonzalezlastra@yahoo.es"),
("Javier", "Hervada", "Carnero", 19, "javierhervadacarnero@hotmail.com"),
("Hugo", "Lamas", "Ferreiro", 18, "hugolamasferreiro@gmail.com"),
("Carlos", "Liste", "Cabarcas", 19, "carloslistecabarcas@yahoo.es"),
("Jose Antonio", "Lodeiro", "Espiñeiro", 18, "joseantoniolodeiroespiñeiro@gmail.com"),
("Álvaro", "López", "López", 20, "alvarolopezlopez@gmail.com"),
("Lucas", "Mehizoso", "De Bernardo", 18, "lucasmehizosodebernardo@yahoo.es"),
("Aarón", "Naveira", "Taibo", 18, "aaronnaveirataibo@gmail.com"),
("Yoel", "Otero", "Sánchez", 19, "yoeloterosanchez@yahoo.es"),
("Adrián", "Pazo", "Álvarez", 20, "adrianpazoalvarez@gmail.com"),
("Martin", "Reboredo", "Orgeira", 19, "martinreboredoorgeira@yahoo.es"),
("Javier", "Riveiro", "Paz", 18, "javierriveiropaz@hotmail.es"),
("Álvaro", "Rodríguez", "González", 20, "alvarorodriguezgonzalez@yahoo.es"),
("Sara", "Vázquez", "Freire", 19, "saravazquezfreire@yahoo.es"),
("Aitor", "Vigo", "Cruz", 20, "aitorvigocruz@gmail.com");

--Asignar centro a cada alumno--
UPDATE alumnos
SET centro= "Liceo La Paz";

--Cambiar ids de los alumnos nuevos--
UPDATE alumnos
SET id= id- 4
WHERE id> 30;