-- LENGUAJE DE MANIPULACION DE DATOS DML
-- INSERT
INSERT INTO Productos (nombre, precio, stock) VALUES
('M2', 850.000, 16);

-- UPDATE
UPDATE productos SET precio = 750.00 WHERE nombre = 'M2';

-- DELETE
DELETE FROM productos WHERE nombre = 'M2';
