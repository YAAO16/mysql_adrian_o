-- FUNCIONES Y OPERADORES
-- FUNCIONES
-- COUNT
SELECT COUNT(*) AS total_clientes FROM Clientes;

-- SUM
SELECT SUM(precio * cantidad) AS total_ventas FROM Ventas 
JOIN Productos ON Ventas.producto_id = Productos.producto_id;

-- AVG
SELECT AVG(precio) AS precio_promedio FROM Productos;

-- MAX
SELECT MAX(precio) AS precio_maximo FROM Productos;

-- MIN
SELECT MIN(stock) AS stock_minimo FROM Productos;

-- CONCAT
SELECT CONCAT(nombre, ' - ', email) AS cliente_info FROM Clientes;

-- DATE
SELECT DATE(fecha_venta) AS fecha_simple FROM Ventas;

-- DATEDIFF
SELECT cliente_id, DATEDIFF(NOW(), fecha_venta) AS dias_desde_venta FROM Ventas;

-- IFNULL
SELECT nombre, IFNULL(email, 'No registrado') AS email_cliente FROM Clientes;

-- ROUND
SELECT nombre, ROUND(precio, 2) AS precio_redondeado FROM Productos;

-- GROUP BY y COUNT
SELECT producto_id, COUNT(*) AS total_ventas FROM Ventas GROUP BY producto_id;


-- OPERADORES
-- BETWEEN
SELECT * FROM Productos WHERE precio BETWEEN 50.000 AND 200.000;

-- IN
SELECT * FROM Ventas WHERE producto_id IN (1, 2, 3);

-- IS NULL
SELECT * FROM Clientes WHERE email IS NULL;

-- LIKE
SELECT * FROM Clientes WHERE nombre LIKE 'A%';








