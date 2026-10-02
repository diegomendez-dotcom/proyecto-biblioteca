# Sistema de Biblioteca

Proyecto individual para practicar Git/GitHub y diseño de bases de datos.

## Objetivo
Crear una base de datos sencilla para administrar usuarios, libros y préstamos.

## Tecnologías
- MySQL
- MySQL Workbench
- Git
- GitHub

## Tablas
- usuarios: almacena los datos de las personas que utilizan la biblioteca.
- libros: almacena los libros disponibles.
- prestamos: relaciona usuarios con libros y registra las fechas del préstamo.

## Relación
Un usuario puede realizar muchos préstamos y un libro puede aparecer en muchos préstamos a lo largo del tiempo.
La tabla `prestamos` funciona como relación entre `usuarios` y `libros`.

## Archivos
- `biblioteca.sql`: crea la base de datos, tablas y datos de prueba.
- `diagrama_EER.png`: diagrama EER del proyecto.
