/** Grocery list: 
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bars (2)
**/

/*creacion de tabla y agreagar valores*/
/*CREATE TABLE groceries (id int IDENTITY (1,1), name TEXT, quantity INTEGER );
/*dentro de los parentisis debe ir el nombre la columna y el tipo de dato, se debe especifir la llave */
INSERT INTO groceries VALUES (1, 'Bananas', 4);
/* insertar en la tabla los valores en el orden que se declararon las columnas*/
INSERT INTO groceries VALUES (2, 'Peanut Butter', 1);
INSERT INTO groceries VALUES (3, 'Dark chocolate bars', 2);
SELECT * FROM groceries;*/
/*me permite visualizar la tabla*/

/*/* Consultar la tabla */
CREATE TABLE groceries (id int IDENTITY (1,1), name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);
SELECT name FROM groceries WHERE aisle > 5 ORDER BY aisle;
/*ordenar la consulta y filtrar resultados utilizando con que se quiere "comparar"*/
*/
 /*Agregando datos*/
/*CREATE TABLE groceries (id INT IDENTITY (1,1),
 name TEXT,
 quantity INTEGER,
 aisle INTEGER);*/
/*INSERT INTO groceries VALUES (1, 'Bananas', 4, 7 );
INSERT INTO groceries VALUES (2, 'Peanut Butter', 1, 2);
INSERT INTO groceries VALUES (3, 'Dark Chocolate Bars', 2, 2);
INSERT INTO groceries VALUES (4, 'Ice cream', 1, 12);
INSERT INTO groceries VALUES (5, 'Cherries', 6, 2);
INSERT INTO groceries VALUES (6, 'Chocolate syrup', 1, 4);
select aisle, SUM (quantity) FROM groceries GROUP BY aisle;*/
/*para saber cuantos articulos tengo en cada pasillo y me muestre el pasillo*/
/* SELECT SUM(quantity) FROM groceries;--> numero total de articulos*/

/*CREATE TABLE Tienda (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, valor INTEGER, color TEXT, talla TEXT);
INSERT INTO Tienda VALUES (1,'vestidos',25,10,'verde','s');
INSERT INTO Tienda VALUES (2,'faldas',15,8,'rojo','Xs');
INSERT INTO Tienda VALUES (3,'sombrero',22,7,'verde','L'); 
INSERT INTO Tienda VALUES (4,'camisa',20,10,'verde','s'); 
INSERT INTO Tienda VALUES (5,'zapatos',12,9,'negros','M'); */
/*SELECT * FROM Tienda 
SELECT sum (quantity) FROM tienda;*/

/* Consultas más complicadas con AND/OR*/
/*CREATE TABLE exercise_logs
    (id INT IDENTITY (1,1),
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

	*/ /*CREAR TABLA */
	/*INSERTAR VALORES*/
/*INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ('biking', 30, 100, 110);
/* al colobar el nombre de las columnas de los datos que voy a ingresar despues de VALUES*/
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ('biking', 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ('dancing', 15, 200, 120);*/

/*SELECT * FROM exercise_logs WHERE calories > 50 ORDER BY calories;*/
/*seleccionar desde la tabla que deseo y criterio y ordenar por lo que deseo*/
/* AND - combinar varias condiciones*/
/*SELECT * FROM exercise_logs WHERE calories > 50 AND minutes < 30;*/

/* OR */
/*SELECT * FROM exercise_logs WHERE calories > 50 OR heart_rate > 100;*/
/*SELECT * FROM exercise_logs WHERE type = "biking" OR type = "hiking" OR type = "tree climbing" OR type = "rowing";*/

/*Hacer consultas en subconsultas con IN*/
/*SELECT * FROM exercise_logs WHERE type = "biking" OR type = "hiking" OR type = "tree climbing" OR type = "rowing"; --> evitando que se declare varior or*/
/*CREATE TABLE drs_favorites
    (id INTEGER PRIMARY KEY,
    type TEXT,
    reason TEXT);

INSERT INTO drs_favorites(type, reason) VALUES ("biking", "Improves endurance and flexibility.");
INSERT INTO drs_favorites(type, reason) VALUES ("hiking", "Increases cardiovascular health.");

SELECT type FROM drs_favorites;

SELECT * FROM exercise_logs WHERE type IN (
    SELECT type FROM drs_favorites*//*esto genera una subconsulta*/
	/*SELECT * FROM exercise_logs WHERE type IN (
    SELECT type FROM drs_favorites WHERE reason = "Increases cardiovascular health");
    
/* LIKE */

SELECT * FROM exercise_logs WHERE type IN (
    SELECT type FROM drs_favorites WHERE reason LIKE "%cardiovascular%");*/

	/*Restringir resultados agrupados con HAVING*/
	/*como nombrar una columna con as*/
	/*SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type;*/
	/**SELECT type, SUM(calories) AS total_calories FROM exercise_logs
    GROUP BY type
    HAVING total_calories > 150
    ;

SELECT type, AVG(calories) AS avg_calories FROM exercise_logs
    GROUP BY type
    HAVING avg_calories > 70
    ; 
    
SELECT type FROM exercise_logs GROUP BY type HAVING COUNT(*) >= 2;*/

/*Cálculo de resultados con CASE*/
/*/* 50-90% of max*/
SELECT COUNT(*) FROM exercise_logs WHERE
    heart_rate >= ROUND(0.50 * (220-30)) 
    AND  heart_rate <= ROUND(0.90 * (220-30));
    
/* CASE */
SELECT type, heart_rate,
    CASE 
        WHEN heart_rate > 220-30 THEN "above max"
        WHEN heart_rate > ROUND(0.90 * (220-30)) THEN "above target"
        WHEN heart_rate > ROUND(0.50 * (220-30)) THEN "within target"
        ELSE "below target"
    END as "hr_zone"
FROM exercise_logs;

SELECT COUNT(*),
    CASE 
        WHEN heart_rate > 220-30 THEN "above max"
        WHEN heart_rate > ROUND(0.90 * (220-30)) THEN "above target"
        WHEN heart_rate > ROUND(0.50 * (220-30)) THEN "within target"
        ELSE "below target"
    END as "hr_zone"
FROM exercise_logs
GROUP BY hr_zone;*/
/*/* cross join */
/*SELECT *FROM student_grades, students;*/ /* combinar tablas con una dato comun solo colocando el nombre de las tablas*/

/* implicit inner join */ /*convinacion interna */
/*SELECT * FROM student_grades, students
    WHERE student_grades.student_id = students.id;*/ /*al agregar where va a verificar que el los datos coincidan*/
/*/* explicit inner join - utilizando JOIN */
SELECT * FROM students
    JOIN student_grades
    ON students.id = student_grades.student_id;*/
	/*selecciono de donde quiero el dato colocando el nombre de la tabla
	/*SELECT students.first_name, students.last_name, students.email, student_grades.test, student_grades.grade FROM students
    JOIN student_grades
    ON students.id = student_grades.student_id
    WHERE grade > 90;*/*/

	/*Unir tablas relacionadas con LEFT OUTER JOIN*/

	/*/* outer join */ 
SELECT students.first_name, students.last_name, student_projects.title
    FROM students
    LEFT OUTER JOIN student_projects
    ON students.id = student_projects.student_id;*/ /* se conserva lo de la tabla de la izaquierda y muestra los valores del lado derecho
	
	
	
	/*Unir tablas a sí mismas con SELF-JOIN*/
	/*/* self join */
SELECT students.first_name, students.last_name, buddies.email as buddy_email
    FROM students
    JOIN students buddies
    ON students.buddy_id = buddies.id;*/ /*se debe agregar un alias*/

	/*Cambiar renglones con UPDATE y DELETE*/
