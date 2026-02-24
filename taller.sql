CREATE DATABASE universidad;
USE universidad;

CREATE TABLE profesores (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL
);

CREATE TABLE materias (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    creditos INT,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);

INSERT INTO profesores (nombre, especialidad) VALUES
('daniel duque', 'Matemáticas'),
('Ana Gómez', 'Programación'),
('valeria carmona', 'Base de Datos'),
('Marta López', 'Redes'),
('Juan Ríos', 'Seguridad Informática');

INSERT INTO materias (nombre, creditos, id_profesor) VALUES
('Álgebra', 3, 1),
('Cálculo', 4, 1),
('JavaScript', 3, 2),
('MySQL', 4, 3),
('Redes I', 3, 4);

CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    edad INT
);

INSERT INTO estudiantes (nombre, edad) VALUES
('Daniel Arenas', 20),
('Laura Díaz', 22),
('Camilo Ruiz', 19),
('Sofía Martínez', 21),
('Andrés Castro', 23);
CREATE TABLE matricula (
    id_estudiante INT,
    id_materia INT,
    PRIMARY KEY (id_estudiante, id_materia),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);

INSERT INTO matricula VALUES
(1,1),
(1,3),
(2,2),
(3,4),
(4,5);