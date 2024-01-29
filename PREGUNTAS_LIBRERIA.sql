select* from grupo4.autor
select* from grupo4.categoria
select* from grupo4.categoria_detalle
select* from grupo4.cliente
select* from grupo4.editorial
select* from grupo4.empleado
select* from grupo4.libro
select* from grupo4.libro_detalle
select* from grupo4.sucursal
select* from grupo4.ventas
select* from grupo4.ventas_detalle



---PREGUNTAS

---1. ¿Cuál es el total de cantidad de ejemplares de libros vendidos por mes de los últimos 24 meses y cuál es la variación inter anual?

WITH TotalLibrosPorMes AS (
    SELECT
        YEAR(V.fecha) AS anio,
        MONTH(V.fecha) AS mes,
        SUM(VD.cantidad) AS total_cantidad
    FROM
        grupo4.ventas V
    INNER JOIN
        grupo4.ventas_detalle VD ON V.ventas_id = VD.ventas_id  -- Agregar JOIN a la tabla de detalles de ventas
    WHERE
        V.fecha >= DATEADD(MONTH, -24, GETDATE())
    GROUP BY
        YEAR(V.fecha), MONTH(V.fecha)
)

SELECT
    anio,
    mes,
    total_cantidad,
    LAG(total_cantidad) OVER (ORDER BY anio, mes) AS total_cantidad_anterior,
    total_cantidad - LAG(total_cantidad) OVER (ORDER BY anio, mes) AS variacion
FROM
    TotalLibrosPorMes
ORDER BY
    anio, mes;



---2. ¿Cuál es la facturación total por mes de los últimos 24 meses y cuál es la variación inter anual?

WITH TotalFacturacionPorMes AS (
    SELECT
        YEAR(V.fecha) AS anio,
        MONTH(V.fecha) AS mes,
        SUM(VD.precio_final) AS total_facturacion
    FROM
        grupo4.ventas V
    INNER JOIN
        grupo4.ventas_detalle VD ON V.ventas_id = VD.ventas_id
    WHERE
        V.fecha >= DATEADD(MONTH, -24, GETDATE())
    GROUP BY
        YEAR(V.fecha), MONTH(V.fecha)
)

SELECT
    anio,
    mes,
    total_facturacion,
    LAG(total_facturacion) OVER (ORDER BY anio, mes) AS total_facturacion_anterior,
    total_facturacion - LAG(total_facturacion) OVER (ORDER BY anio, mes) AS variacion
FROM
    TotalFacturacionPorMes
ORDER BY
    anio, mes;




---3. ¿Cuáles son los 10 libros más vendidos durante los últimos 12 meses y cuál es su porcentaje de facturación?

WITH LibrosMasVendidos AS (
    SELECT TOP 10
        VD.libro_id,
        L.titulo,
        SUM(VD.cantidad) AS total_cantidad,
        SUM(VD.precio_final * VD.cantidad) AS total_facturacion
    FROM
        grupo4.ventas_detalle VD
        JOIN grupo4.libro L ON VD.libro_id = L.libro_id
        JOIN grupo4.ventas V ON VD.ventas_id = V.ventas_id
    WHERE
        V.fecha >= DATEADD(MONTH, -12, GETDATE())  -- Obtener ventas de los últimos 12 meses
    GROUP BY
        VD.libro_id, L.titulo
)

SELECT
    titulo,
	total_cantidad,
	total_facturacion,
	total_facturacion / SUM(total_facturacion) OVER () * 100 AS porcentaje_facturacion
FROM
    LibrosMasVendidos
ORDER BY
    total_facturacion DESC;



---4. ¿Quienes son los 5 autores más vendidos durante los últimos 12 meses y cuál es su porcentaje de facturación?

WITH AutoresMasVendidos AS (
    SELECT TOP 5
        A.autor_id,
        A.nombre,
        A.apellido,
        SUM(VD.cantidad) AS total_cantidad,
        SUM(VD.precio_final * VD.cantidad) AS total_facturacion
    FROM
        grupo4.ventas_detalle VD
        JOIN grupo4.libro_detalle LD ON VD.libro_id = LD.libro_id
        JOIN grupo4.autor A ON LD.autor_id = A.autor_id
        JOIN grupo4.ventas V ON VD.ventas_id = V.ventas_id
    WHERE
        V.fecha >= DATEADD(MONTH, -12, GETDATE())  -- Obtener ventas de los últimos 12 meses
    GROUP BY
        A.autor_id, A.nombre, A.apellido
)

SELECT
    nombre,
	apellido,
	total_cantidad,
	total_facturacion,
    total_facturacion / SUM(total_facturacion) OVER () * 100 AS porcentaje_facturacion
FROM
    AutoresMasVendidos
ORDER BY
    total_facturacion DESC;



---5. ¿Cómo se distribuyen las ventas por categorías de ejemplares de libros vendidos y facturación durante los últimos 12 meses? 

WITH VentasPorCategoria AS (
    SELECT
        C.categoria_id,
        C.categoria,
        SUM(VD.cantidad) AS total_cantidad,
        SUM(VD.precio_final * VD.cantidad) AS total_facturacion
    FROM
        grupo4.ventas_detalle VD
        JOIN grupo4.libro L ON VD.libro_id = L.libro_id
        JOIN grupo4.categoria_detalle CD ON VD.libro_id = CD.libro_id
        JOIN grupo4.categoria C ON CD.categoria_id = C.categoria_id
        JOIN grupo4.ventas V ON VD.ventas_id = V.ventas_id
    WHERE
        V.fecha >= DATEADD(MONTH, -12, GETDATE())  -- Obtener ventas de los últimos 12 meses
    GROUP BY
        C.categoria_id, C.categoria
)

SELECT
    categoria,
	total_cantidad,
    total_facturacion,
	total_facturacion / SUM(total_facturacion) OVER () * 100 AS porcentaje_facturacion
FROM
    VentasPorCategoria
ORDER BY
    total_facturacion DESC;



---6. ¿Cómo se distribuyen las ventas por sucursal de ejemplares de libros vendidos y facturación durante los últimos 12 meses?

WITH VentasPorSucursal AS (
    SELECT
        S.sucursal_id,
        S.nombre AS sucursal,
        SUM(VD.cantidad) AS total_cantidad,
        SUM(VD.precio_final * VD.cantidad) AS total_facturacion
    FROM
        grupo4.ventas V
        JOIN grupo4.sucursal S ON V.sucursal_id = S.sucursal_id
        JOIN grupo4.ventas_detalle VD ON V.ventas_id = VD.ventas_id
    WHERE
        V.fecha >= DATEADD(MONTH, -12, GETDATE())  -- Obtener ventas de los últimos 12 meses
    GROUP BY
        S.sucursal_id, S.nombre
)

SELECT
    sucursal,
	total_cantidad,
    total_facturacion,
    total_facturacion / SUM(total_facturacion) OVER () * 100 AS porcentaje_facturacion
FROM
    VentasPorSucursal
ORDER BY
    total_facturacion DESC;



---7. ¿Quienes son los 5 empleados con más ventas y facturación en los últimos 12 meses?

WITH EmpleadosVentas AS (
    SELECT
        E.empleado_id,
        E.nombre,
        E.apellido,
        SUM(VD.cantidad) AS total_cantidad,
        SUM(VD.precio_final * VD.cantidad) AS total_facturacion
    FROM
        grupo4.empleado E
        INNER JOIN grupo4.ventas V ON E.empleado_id = V.empleado_id
        INNER JOIN grupo4.ventas_detalle VD ON V.ventas_id = VD.ventas_id
    WHERE
        V.fecha >= DATEADD(MONTH, -12, GETDATE())  -- Obtener registros de los últimos 12 meses
    GROUP BY
        E.empleado_id, E.nombre, E.apellido
)

SELECT TOP 5
    nombre,
    apellido,
    total_cantidad,
    total_facturacion
FROM
    EmpleadosVentas
ORDER BY
    total_facturacion DESC;  -- Ordenar por facturación de manera descendente




---8. ¿Quiénes son los 5 clientes con más compras y facturación en los últimos 12 meses?

WITH ComprasPorCliente AS (
    SELECT
        C.cliente_id,
        C.nombre AS nombre_cliente,
        C.apellido AS apellido_cliente,
        SUM(VD.cantidad) AS total_cantidad,
        SUM(VD.precio_final * VD.cantidad) AS total_facturacion
    FROM
        grupo4.ventas V
        JOIN grupo4.cliente C ON V.cliente_id = C.cliente_id
        JOIN grupo4.ventas_detalle VD ON V.ventas_id = VD.ventas_id
    WHERE
        V.fecha >= DATEADD(MONTH, -12, GETDATE())  -- Obtener ventas de los últimos 12 meses
    GROUP BY
        C.cliente_id, C.nombre, C.apellido
)

SELECT TOP 5
    nombre_cliente,
    apellido_cliente,
    total_cantidad,
    total_facturacion
FROM
    ComprasPorCliente
ORDER BY
    total_facturacion DESC;




---9. ¿Cuáles son los libros que tienen un stock menor a 15 unidades actualmente? 

SELECT
    L.titulo,
    L.stock
FROM
    grupo4.libro L
WHERE
    L.stock < 15;




---10. ¿Cuál es el total de clientes que han comprado libros por mes de los últimos 24 meses y cuál es la variación inter anual?

WITH ClientesPorMes AS (
    SELECT
        YEAR(V.fecha) AS anio,
        MONTH(V.fecha) AS mes,
        COUNT(V.cliente_id) AS total_clientes
    FROM
        grupo4.ventas V
    WHERE
        V.fecha >= DATEADD(MONTH, -24, GETDATE())  -- Obtener registros de los últimos 24 meses
    GROUP BY
        YEAR(V.fecha), MONTH(V.fecha)
)

SELECT
    anio,
    mes,
    total_clientes,
    LAG(total_clientes) OVER (ORDER BY anio, mes) AS total_clientes_anterior,
    total_clientes - LAG(total_clientes) OVER (ORDER BY anio, mes) AS variacion
FROM
    ClientesPorMes
ORDER BY
    anio, mes;