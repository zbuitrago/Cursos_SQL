/*Desafio completar cada elemento. Inserta otro elmento a la lista con el número estimado de minutos que tomará*/

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, 'Wash the dishes', 15);
INSERT INTO todo_list VALUES (2, 'vacuuming', 20);
INSERT INTO todo_list VALUES (3, 'Learn some stuff on KA', 30);
INSERT INTO todo_list VALUES (4, 'Learn some SQL SERVER', 60); 
SELECT SUM (minutes) FROM todo_list ;
SELECT AVG (minutes) FROM todo_list;
SELECT MIN (minutes) FROM todo_list;
SELECT MAX (minutes) FROM todo_list