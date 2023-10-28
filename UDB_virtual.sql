CREATE DATABASE UDB_virtual;

USE UDB_virtual;

CREATE TABLE "estudiantes" (
  "id" INT PRIMARY KEY,
  "nombre" VARCHAR(50),
  "apellido" VARCHAR(50),
  "fecha_nacimiento" DATE,
  "direccion" VARCHAR(100),
  "telefono" VARCHAR(15)
);

CREATE TABLE "cursos" (
  "id" INT PRIMARY KEY,
  "nombre" VARCHAR(50),
  "codigo" VARCHAR(10) UNIQUE,
  "profesor" VARCHAR(50)
);

CREATE TABLE "notas" (
  "id" INT PRIMARY KEY,
  "id_estudiante" INT,
  "id_curso" INT,
  "calificacion" DECIMAL(4,2)
);

ALTER TABLE "notas" ADD FOREIGN KEY ("id_estudiante") REFERENCES "estudiantes" ("id");

ALTER TABLE "notas" ADD FOREIGN KEY ("id_curso") REFERENCES "cursos" ("id");
