CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(120) NOT NULL UNIQUE,
    telefono VARCHAR(20)
);

CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    anio_publicacion INT,
    disponible BOOLEAN DEFAULT TRUE
);

CREATE TABLE prestamos (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro)
);

INSERT INTO usuarios (nombre, correo, telefono) VALUES
('Juan Pérez', 'juan@gmail.com', '5551234567'),
('María López', 'maria@gmail.com', '5559876543');

INSERT INTO libros (titulo, autor, anio_publicacion, disponible) VALUES
('Cien años de soledad', 'Gabriel García Márquez', 1967, TRUE),
('El principito', 'Antoine de Saint-Exupéry', 1943, TRUE),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, TRUE);

INSERT INTO prestamos (id_usuario, id_libro, fecha_prestamo, fecha_devolucion) VALUES
(1, 1, '2026-10-01', NULL),
(2, 2, '2026-09-28', '2026-09-30');
