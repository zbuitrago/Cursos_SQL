/*Desafio completar cada elemento. Inserta otro elmento a la lista con el número estimado de minutos que tomará*/
drop table Tienda
CREATE TABLE Tienda (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, valor INTEGER, color TEXT, talla TEXT);
INSERT INTO Tienda VALUES (1,'vestidos_Kum',25,10,'verde','s');
INSERT INTO Tienda VALUES (2,'faldas_LOL',15,8,'rojo','Xs');
INSERT INTO Tienda VALUES (3,'sombrero_hat',22,7,'verde','L'); 
INSERT INTO Tienda VALUES (4,'camisa_Dulce',20,10,'verde','s'); 
INSERT INTO Tienda VALUES (5,'zapatos_plum',12,9,'negro','36'); 
INSERT INTO Tienda VALUES (6,'zapatos_gol',12,15,'cafe','38'); 
INSERT INTO Tienda VALUES (7,'Vestido_Mil',38,22,'rosa','L');
INSERT INTO Tienda VALUES (8,'Pantalon_tu',8,17,'negro','M');
INSERT INTO Tienda VALUES (9,'Sudadera_Do',12,19,'Morado','L'); 
INSERT INTO Tienda VALUES (10,'Polo',12,9,'negro','M'); 
INSERT INTO Tienda VALUES (11,'chaqueta_blu',2,15,'gris','s'); 
INSERT INTO Tienda VALUES (12,'jeans',21,32,'negro','Unica'); 
INSERT INTO Tienda VALUES (13,'Camiseta',15,5,'negro','M'); 
INSERT INTO Tienda VALUES (14,'Correa',17,7,'negro','M');   
SELECT * FROM Tienda;
SELECT SUM (quantity) FROM Tienda;
SELECT Min(valor)FROM Tienda; 
SELECT MAX (quantity) FROM Tienda;
SELECT COUNT(id) FROM Tienda;
