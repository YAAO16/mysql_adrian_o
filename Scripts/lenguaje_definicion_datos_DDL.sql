-- LENGUAJE DE DEFINICION DE DATOS (DDL)
-- CREATE DATABASE
create database ddl;
use ddl;

-- CREATE TABLE
CREATE TABLE prueba (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100),
    telefono VARCHAR(15)
);

-- ALTER TABLE
ALTER TABLE prueba
MODIFY COLUMN telefono VARCHAR(20);

-- DROP TABLE
drop table prueba;