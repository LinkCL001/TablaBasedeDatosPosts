--1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts. (1 Punto)
CREATE TABLE comentarios(
    id SERIAL,
    fecha DATE,
    hora_de_creacion TIME,
    contenido VARCHAR,
    FOREIGN KEY (id) REFERENCES post ()
);
--2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos". (0.4 Puntos)
INSERT INTO comentarios (fecha, hora_de_creacion, contenido)
VALUES ('2021-10-25','19:00:00','primer contenido');
--3. Crear un nuevo post para "Margarita". (1 Punto)
--4. Ingresar 5 comentarios para el post de Margarita. (1 Punto)
