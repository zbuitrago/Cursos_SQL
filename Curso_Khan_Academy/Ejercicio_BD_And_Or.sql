/*Desafio Agrega otro SELECT que use AND para mostrar los t�tulos de las canciones que sean 'epic' y con fecha de lanzamiento posterior a 1990 y que duren menos de 4 minutos*/
drop table songs
CREATE TABLE songs (
    id INTEGER IDENTITY (1,1),
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('Bohemian Rhapsody', 'Queen', 'epic', 60, 1975);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('Let it go', 'Idina Menzel', 'epic', 227, 2013);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('I will survive', 'Gloria Gaynor', 'epic', 198, 1978);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('Twist and Shout', 'The Beatles', 'happy', 152, 1963);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('La Bamba', 'Ritchie Valens', 'happy', 166, 1958);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('I will always love you', 'Whitney Houston', 'epic', 273, 1992);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('Sweet Caroline', 'Neil Diamond', 'happy', 201, 1969);
	INSERT INTO songs (title, artist, mood, duration, released)
		VALUES ('Call me maybe', 'Carly Rae Jepsen', 'happy', 193, 2011);
    
	SELECT title from songs ;
	SELECT title from songs WHERE mood LIKE 'epic' OR released > 1990 ;
	SELECT title from songs WHERE  mood LIKE 'epic' AND released > 1990 AND duration < 240;
