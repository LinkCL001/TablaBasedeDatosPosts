--1. Crear una base de datos con nombre “Posts”. (1 Punto)Crear una base de datos con nombre “Posts”. (1 Punto)
CREATE DATABASE posts;
--2. Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación, contenido y descripción. (1 Punto)
CREATE TABLE post(
    id SERIAL,
    nombre_usuario VARCHAR(25),
    fecha_creacion DATE,
    contenido VARCHAR,
    descripcion VARCHAR(255),
    PRIMARY KEY (id)
);
--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos". (0.6 Puntos)
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('Pamela', '2021-10-25','primer contenido','primera descripcion');

INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('Pamela', '2021-10-25','segundo contenido','segunda descripcion');

INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('Carlos', '2021-10-25','primer contenido','primera descripcion');
--4. Modificar la tabla post, agregando la columna título. (1 Punto)
ALTER TABLE post
ADD titulo VARCHAR(50);
--5. Agregar título a las publicaciones ya ingresadas. (1 Punto)
UPDATE post 
SET titulo = 'primer titulo' 
WHERE id = 1;

UPDATE post 
SET titulo = 'segundo titulo' 
WHERE id = 2;

UPDATE post 
SET titulo = 'tercer titulo' 
WHERE id = 3;
--6. Insertar 2 post para el usuario "Pedro". (0.4 Puntos)
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('Pedro', '2021-10-25','primer contenido','primera descripcion');

INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('Pedro', '2021-10-25','segundo contenido','segunda descripcion');
--7. Eliminar el post de Carlos. (1 Punto)
DELETE FROM post WHERE nombre_usuario='Carlos';

--8. Ingresar un nuevo post para el usuario "Carlos". (0.6 Puntos)
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('Carlos', '2021-10-25','nuevo contenido','nueva descripcion');

select * from post;