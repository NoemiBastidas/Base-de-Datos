//CREAR BASE DE DATOS
-- Database: "Estudiantes"


-- DROP DATABASE "Estudiantes";


CREATE DATABASE "Estudiantes"
  
WITH OWNER = "Estudiante"
       
	ENCODING = 'UTF8'
       
	TABLESPACE = pg_default
       
	LC_COLLATE = 'Spanish_Ecuador.1252'
       
	LC_CTYPE = 'Spanish_Ecuador.1252'
       
	CONNECTION LIMIT = -1;


//CREAR TABLA ESTUDIANTE
- Table: datos


-- DROP TABLE datos;


CREATE TABLE datos

(
  
	idestudiante integer NOT NULL DEFAULT nextval('estudiante_sec'::regclass),
  
	nombre character varying(50),
  
	apellido character varying(50),
  
	telefono integer,
  
	fecha_nacimiento date,
  
	CONSTRAINT datos_pkey PRIMARY KEY (idestudiante)

)

WITH (
  
	OIDS=FALSE

);

ALTER TABLE datos
  
	OWNER TO postgres;

//INSERTAR VALORES A LOS CAMPOS
INSERT INTO datos(nombre, apellido, telefono, fecha_nacimiento)
    VALUES ('Monica', 'Delgado', 3025487, '1999/11/15'),
	('Juan', 'Ortiz', 3025677, '1987/10/05'),
	('Vinicio', 'Sasig', 30576487, '1989/11/20'),
	('Sofia', 'Muñoz', 3015487, '1981/06/17'),

//ELIMINAR COLUMNA SIN ALTERAR DATOS DE LA TABLA
ALTER TABLE datos DROP COLUMN telefono
