-- ==========================
-- Script de ALTER TABLE
-- ==========================
USE VOLUNTARIADO;
-- 1. Agregar una columna 'genero' en la tabla Estudiante
ALTER TABLE Estudiante
ADD genero VARCHAR(10);
-- Verificación con un SELECT después de agregar la columna
SELECT * FROM Estudiante;

-- 2. Modificar el tipo de dato de la columna 'sueldo' en la tabla Profesor
-- Cambiamos de DECIMAL(6,2) a DECIMAL(8,2) para permitir valores más grandes
ALTER TABLE Profesor
MODIFY sueldo DECIMAL(8,2);
-- Verificación insertando un nuevo registro en la tabla Profesor
INSERT INTO Profesor (nombre_completo, correo, telefono, departamento, especialidad, sueldo)
VALUES ('Ing. Pablo Silva', 'pablo.silva@example.com', '555-4444', 'Ingeniería', 'Sistemas', 10000.50);
-- Comprobación con SELECT
SELECT * FROM Profesor;

-- 3. Eliminar la columna 'descripcion' en la tabla Materia
ALTER TABLE Materia
DROP COLUMN descripcion;
-- Verificación con un SELECT para comprobar la eliminación de la columna
SELECT * FROM Materia;

-- 4. Agregar una restricción CHECK a la columna 'capacidad' en la tabla Salon
-- Se asegura que la capacidad del salón sea siempre mayor a 0
ALTER TABLE Salon
ADD CONSTRAINT chk_capacidad CHECK (capacidad > 0);
-- Verificación insertando un nuevo salón
INSERT INTO Salon (nombre_salon, capacidad, ubicacion)
VALUES ('Laboratorio 2', 50, 'Edificio D');
-- Intentamos insertar un valor inválido para probar la restricción CHECK
-- INSERT INTO Salon (nombre_salon, capacidad, ubicacion) VALUES ('Laboratorio 3', -10, 'Edificio E'); -- Esto fallará

-- 5. Renombrar la columna 'periodo_academico' a 'semestre' en la tabla Curso
ALTER TABLE Curso
RENAME COLUMN periodo_academico TO semestre;
-- Verificación con un SELECT para comprobar el cambio de nombre
SELECT * FROM Curso;

-- 6. Eliminar la clave foránea que referencia a la columna 'id_profesor' en la tabla Curso
ALTER TABLE Curso
DROP FOREIGN KEY id_profesor; 
-- Verificación con un SELECT para comprobar que se ha eliminado la clave foránea
SELECT * FROM Curso;

-- 7. Cambiar el nombre de la tabla 'Salon' a 'Aula'
ALTER TABLE Salon
RENAME TO Aula;
-- Verificación con un SELECT para comprobar el cambio de nombre
SELECT * FROM Aula;

-- ==========================
-- FIN DEL SCRIPT
-- ==========================
