-- Creacion de la base de datos almacen-adrian
CREATE DATABASE almacen_adrian;
USE almacen_adrian;

-- Crear la tabla Clientes en la base de datos almacen_adrian
CREATE TABLE Clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefono VARCHAR(15)
);

-- Crear la tabla Productos en la base de datos almacen_adrian
CREATE TABLE Productos (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 3) NOT NULL,
    stock INT NOT NULL
);

-- Crear la tabla Ventas en la base de datos almacen_adrian
CREATE TABLE Ventas (
    venta_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    fecha_venta DATE,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

-- Insertar datos en la tabla Clientess en la base de datos almacen_adrian
INSERT INTO Clientes (nombre, email, telefono) VALUES
('Juan Pérez', 'juan.perez@email.com', '123456789'),
('María Gómez', 'maria.gomez@email.com', '987654321'),
('Carlos Ruiz', 'carlos.ruiz@email.com', '555666777'),
('Ana Torres', 'ana.torres@email.com', '234567890'),
('Pedro García', 'pedro.garcia@email.com', '678901234'),
('Laura Martínez', 'laura.martinez@email.com', '890123456'),
('José Fernández', 'jose.fernandez@email.com', '321098765'),
('Marta López', 'marta.lopez@email.com', '876543210'),
('Luis Ramírez', 'luis.ramirez@email.com', '765432109'),
('Carmen Sánchez', 'carmen.sanchez@email.com', '654321098');

-- Insertar datos en la tabla Productos en la base de datos almacen_adrian
INSERT INTO Productos (nombre, precio, stock) VALUES
('Laptop', 750.000, 10),
('Smartphone', 500.000, 25),
('Auriculares', 50.000, 100),
('Teclado', 25.000, 50),
('Mouse', 20.000, 75),
('Monitor', 200.000, 15),
('Impresora', 150.000, 12),
('Cámara Web', 45.000, 30),
('Micrófono', 60.000, 20),
('Altavoces', 80.000, 25);

-- Insertar datos en la tabla Ventas en la base de datos almacen_adrian
INSERT INTO Ventas (cliente_id, producto_id, cantidad, fecha_venta) VALUES
(1, 1, 1, '2024-08-01'),
(2, 2, 2, '2024-08-02'),
(3, 3, 3, '2024-08-03'),
(4, 4, 1, '2024-08-04'),
(5, 5, 1, '2024-08-05'),
(6, 6, 1, '2024-08-06'),
(7, 7, 2, '2024-08-07'),
(8, 8, 2, '2024-08-08'),
(9, 9, 3, '2024-08-09'),
(10, 10, 2, '2024-08-10');

-- Eliminacion de base de datos almacen_adrian
Drop database almacen_adrian;