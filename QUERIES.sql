USE bookstore;

-- Consulta 1: Total de ventas (precio_total) por género de libro y mes.
SELECT      sum(hv.precio_total) AS TOTAL, dl.genero AS GENERO, dt.mes AS MES
FROM        hechos_ventas_libros hv JOIN bookstore.dim_libro dl on hv.id_libro = dl.id_libro
                                    JOIN bookstore.dim_tiempo dt on dt.id_tiempo = hv.id_tiempo
GROUP BY    dl.genero, dt.mes;

-- Consulta 2: Cantidad total de libros vendidos por tienda y autor.
SELECT      sum(hv.cantidad) AS CANTIDAD, dl.autor AS AUTOR, dt.nombre_tienda AS TIENDA
FROM        hechos_ventas_libros hv JOIN bookstore.dim_libro dl on hv.id_libro = dl.id_libro
                                    JOIN bookstore.dim_tienda dt on hv.id_tienda = dt.id_tienda
GROUP BY dl.autor, dt.nombre_tienda;

-- Consulta 3: Ingresos totales por ciudad de cliente y trimestre.
SELECT      sum(hv.precio_total) AS INGRESOS, dc.ciudad AS CIUDAD, dt.trimestre AS TRIMESTRE
FROM        hechos_ventas_libros hv JOIN bookstore.dim_cliente dc on hv.id_cliente = dc.id_cliente
                                    JOIN bookstore.dim_tiempo dt on hv.id_tiempo = dt.id_tiempo
GROUP BY dc.ciudad, dt.trimestre;

-- Consulta 4: Total de ventas de cada cliente (precio_total acumulado) y número de libros comprados.

SELECT      dc.id_cliente AS CLIENTE_ID, dc.nombre_cliente AS CLIENTE, sum(hv.cantidad) AS LIBROS
FROM        hechos_ventas_libros hv JOIN bookstore.dim_cliente dc on hv.id_cliente = dc.id_cliente
GROUP BY    dc.id_cliente;