

USE voluntariado;

CREATE TABLE Estudiante (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    direccion VARCHAR(200),
    carrera VARCHAR(50) NOT NULL
);


CREATE TABLE Profesor (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    departamento VARCHAR(50),
    especialidad VARCHAR(50),
    sueldo decimal(6,2) check (sueldo > 0)
);


CREATE TABLE Materia (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre_materia VARCHAR(100) NOT NULL,
    descripcion TEXT,
    creditos INT NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor)
);


CREATE TABLE Salon (
    id_salon INT PRIMARY KEY AUTO_INCREMENT,
    nombre_salon VARCHAR(50) NOT NULL,
    capacidad INT  DEFAULT 100 NOT NULL,
    ubicacion VARCHAR(100)
);


CREATE TABLE Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    id_materia INT,
    id_profesor INT,
    periodo_academico VARCHAR(20) NOT NULL,
    cupo_maximo INT NOT NULL,
    horario VARCHAR(50) NOT NULL,
    id_salon INT,
    FOREIGN KEY (id_materia) REFERENCES Materia(id_materia),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor),
    FOREIGN KEY (id_salon) REFERENCES Salon(id_salon)
);


CREATE TABLE Inscripcion (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE NOT NULL,
    estado_inscripcion VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiante(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);
