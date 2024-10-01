
USE voluntariado;
INSERT INTO Estudiante (nombre_completo, fecha_nacimiento, correo, telefono, direccion, carrera) 
VALUES 
('Juan Pérez', '2000-05-15', 'juan.perez@example.com', '555-1234', 'Calle Falsa 123', 'Ingeniería en Sistemas'),
('Ana García', '1999-08-20', 'ana.garcia@example.com', '555-5678', 'Avenida Siempre Viva 456', 'Administración'),
('Luis Martínez', '2001-02-10', 'luis.martinez@example.com', '555-9101', 'Boulevard de los Sueños 789', 'Derecho');


INSERT INTO Profesor (nombre_completo, correo, telefono, departamento, especialidad, sueldo) 
VALUES 
('Dr. Roberto Gómez', 'roberto.gomez@example.com', '555-1111', 'Matemáticas', 'Álgebra', 3000.00),
('Mtra. Laura López', 'laura.lopez@example.com', '555-2222', 'Ciencias Sociales', 'Psicología', 2800.00),
('Ing. Carlos Ruiz', 'carlos.ruiz@example.com', '555-3333', 'Ingeniería', 'Electrónica', 3200.00);


INSERT INTO Materia (nombre_materia, descripcion, creditos, id_profesor) 
VALUES 
('Cálculo I', 'Introducción al cálculo diferencial e integral', 4, 1),
('Introducción a la Psicología', 'Fundamentos de la psicología como ciencia', 3, 2),
('Circuitos Eléctricos', 'Análisis y diseño de circuitos eléctricos', 4, 3);


INSERT INTO Salon (nombre_salon, capacidad, ubicacion) 
VALUES 
('Aula 101', 30, 'Edificio A'),
('Aula 202', 25, 'Edificio B'),
('Laboratorio de Ciencias', 20, 'Edificio C');


INSERT INTO Curso (id_materia, id_profesor, periodo_academico, cupo_maximo, horario, id_salon) 
VALUES 
(1, 1, '2024-1', 30, 'Lunes y Miércoles 10:00-12:00', 1),
(2, 2, '2024-1', 25, 'Martes y Jueves 14:00-16:00', 2),
(3, 3, '2024-1', 20, 'Viernes 08:00-10:00', 3);


INSERT INTO Inscripcion (id_estudiante, id_curso, fecha_inscripcion, estado_inscripcion) 
VALUES 
(1, 1, '2024-01-15', 'Activo'),
(2, 2, '2024-01-16', 'Activo'),
(1, 3, '2024-01-17', 'Activo');

