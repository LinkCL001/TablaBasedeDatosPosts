--1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts. (1 Punto)
CREATE TABLE comentarios(
    id SERIAL,
    fecha DATE,
    hora_de_creacion TIME,
    contenido VARCHAR,
    id_post INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_post) REFERENCES post (id)
);
--2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos". (0.4 Puntos)
INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES (1,'2021-10-25','18:00:00','primer comentario');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES (2,'2021-10-25','18:30:00','segundo comentario');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES (6,'2021-10-25','19:00:05','primer comentario');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES (6,'2021-10-25','19:00:10','segundo comentario');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES (6,'2021-10-25','19:00:20','tercer comentario');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES (6,'2021-10-25','19:00:30','cuarto comentario');

--3. Crear un nuevo post para "Margarita". (1 Punto)
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES ('Margarita', '2021-10-25','primer contenido','primera descripcion','nuevo titulo');

--4. Ingresar 5 comentarios para el post de Margarita. (1 Punto)

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES ( 7,'2021-10-25','19:00:00','primer contenido');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES ( 7,'2021-10-25','19:05:05','segundo contenido');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES ( 7,'2021-10-25','19:10:10','tercer contenido');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES ( 7,'2021-10-25','19:15:15','cuarto contenido');

INSERT INTO comentarios (id_post, fecha, hora_de_creacion, contenido)
VALUES ( 7,'2021-10-25','19:20:20','quinto contenido');


select * from post left join comentarios on post.id=comentarios.id_post;