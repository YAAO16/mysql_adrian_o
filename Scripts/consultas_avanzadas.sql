-- CONSULTAS AVANZADAS
-- INNER JOIN
SELECT c.nombre AS cliente, p.nombre AS producto, v.cantidad, v.fecha_venta
FROM Ventas v
INNER JOIN Clientes c ON v.cliente_id = c.cliente_id
INNER JOIN Productos p ON v.producto_id = p.producto_id;

-- LEFT JOIN
SELECT c.nombre AS cliente, v.venta_id, v.fecha_venta, p.nombre AS producto
FROM Clientes c
LEFT JOIN Ventas v ON c.cliente_id = v.cliente_id
LEFT JOIN Productos p ON v.producto_id = p.producto_id
ORDER BY c.nombre;

-- SUBCONSULTA CORRELACIONADA
SELECT nombre, (SELECT SUM(cantidad) 
               FROM Ventas 
               WHERE cliente_id = c.cliente_id) AS total_comprado
FROM Clientes c;

-- GROUP-HAVING
SELECT p.nombre, SUM(v.cantidad) AS total_vendido
FROM Ventas v
JOIN Productos p ON v.producto_id = p.producto_id
GROUP BY p.nombre
HAVING total_vendido > 10;

-- UNION
SELECT nombre AS nombre, 'Cliente' AS tipo FROM Clientes
UNION
SELECT nombre AS nombre, 'Producto' AS tipo FROM Productos;

-- ROW_NUMBER
SELECT cliente_id, producto_id, cantidad, 
       ROW_NUMBER() OVER (PARTITION BY cliente_id ORDER BY fecha_venta DESC) AS fila
FROM Ventas;

-- EXISTS
SELECT nombre
FROM Clientes c
WHERE EXISTS (SELECT 1 FROM Ventas v WHERE v.cliente_id = c.cliente_id);

-- SUBCONSULTA CON LA CLAUSULA FROM
SELECT sub.producto_id, sub.total_vendido
FROM (SELECT producto_id, SUM(cantidad) AS total_vendido
      FROM Ventas
      GROUP BY producto_id) sub
WHERE sub.total_vendido < 10;


-- CASE
SELECT nombre, 
       CASE 
           WHEN stock > 50 THEN 'Alta disponibilidad'
           WHEN stock BETWEEN 20 AND 50 THEN 'Media disponibilidad'
           ELSE 'Baja disponibilidad'
       END AS disponibilidad
FROM Productos;

-- CROSS JOIN
SELECT c.nombre AS cliente, p.nombre AS producto
FROM Clientes c
CROSS JOIN Productos p;

