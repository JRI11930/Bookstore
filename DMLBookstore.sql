USE bookstore;

INSERT INTO dim_libro (id_libro, titulo, autor, genero, precio_unitario) VALUES
(1, 'Cien Años de Soledad', 'Gabriel García Márquez', 'Realismo Mágico', 350.00),
(2, '1984', 'George Orwell', 'Distopía', 280.00),
(3, 'Orgullo y Prejuicio', 'Jane Austen', 'Romance', 300.00),
(4, 'El Gran Gatsby', 'F. Scott Fitzgerald', 'Clásico', 250.00),
(5, 'Sapiens', 'Yuval Noah Harari', 'Historia', 450.00);

INSERT INTO dim_cliente (id_cliente, nombre_cliente, edad, genero, ciudad) VALUES
(1, 'Laura Mendoza', 25, 'F', 'Monterrey'),
(2, 'Pedro Sánchez', 40, 'M', 'Guadalajara'),
(3, 'Lucía Fernández', 33, 'F', 'Puebla'),
(4, 'Andrés Morales', 29, 'M', 'Querétaro'),
(5, 'Valeria Jiménez', 37, 'F', 'Ciudad de México');

INSERT INTO dim_tienda (id_tienda, nombre_tienda, ciudad, pais) VALUES
(11, 'Tienda Central', 'Ciudad de México', 'México'),
(12, 'Tienda del Norte', 'Monterrey', 'México'),
(13, 'Tienda del Este', 'Guadalajara', 'México');


INSERT INTO dim_tiempo (id_tiempo, anio, mes, dia, trimestre) VALUES
(1, 2023, 2, 11, 1),
(2, 2022, 5, 13, 2),
(3, 2024, 1, 4, 1);

INSERT INTO dim_tiempo (id_tiempo, anio, mes, dia, trimestre) VALUES
(4, 2023, 1, 7, 1),
(5, 2023, 3, 15, 1),
(6, 2023, 5, 22, 2),
(7, 2023, 7, 9, 3),
(8, 2023, 9, 30, 3),
(9, 2023, 11, 11, 4),
(10, 2024, 1, 25, 1),
(11, 2024, 3, 8, 1),
(12, 2024, 5, 17, 2),
(13, 2024, 7, 23, 3),
(14, 2024, 9, 5, 3),
(15, 2024, 11, 20, 4),
(16, 2022, 12, 13, 4),
(17, 2022, 10, 1, 4),
(18, 2022, 8, 29, 3),
(19, 2022, 6, 10, 2),
(20, 2022, 4, 19, 2),
(21, 2022, 2, 28, 1),
(22, 2023, 1, 1, 1),
(23, 2023, 12, 31, 4),
(24, 2023, 10, 16, 4),
(25, 2024, 2, 14, 1),
(26, 2024, 4, 30, 2),
(27, 2024, 6, 15, 2),
(28, 2024, 8, 7, 3),
(29, 2024, 10, 10, 4),
(30, 2024, 12, 25, 4);

--  ==========================================
--              Tabla de hechos
--  ==========================================

INSERT INTO hechos_ventas_libros (id_venta, id_tiempo, id_libro, id_cliente, id_tienda, cantidad, precio_total) VALUES
(16, 14, 1, 1, 11, 2, 700.00),
(17, 15, 2, 2, 12, 1, 280.00),
(18, 16, 3, 2, 13, 3, 900.00),
(19, 17, 4, 4, 11, 1, 250.00),
(20, 18, 5, 2, 12, 2, 900.00),
(21, 19, 1, 1, 13, 1, 350.00),
(22, 20, 2, 2, 11, 1, 280.00),
(23, 21, 3, 3, 12, 2, 600.00),
(24, 22, 4, 3, 13, 1, 250.00),
(25, 23, 5, 2, 11, 3, 1350.00),
(26, 24, 1, 1, 12, 1, 350.00),
(27, 25, 2, 2, 13, 2, 560.00),
(28, 26, 3, 3, 11, 1, 300.00),
(29, 27, 4, 4, 12, 3, 750.00),
(30, 28, 5, 5, 13, 1, 450.00),
(31, 29, 1, 2, 11, 1, 350.00),
(32, 20, 2, 2, 12, 2, 560.00),
(33, 20, 3, 3, 13, 1, 300.00),
(34, 22, 4, 2, 11, 2, 500.00),
(35, 23, 5, 5, 12, 1, 450.00),
(36, 14, 1, 1, 13, 1, 350.00),
(37, 15, 2, 2, 11, 1, 280.00),
(38, 16, 3, 4, 12, 3, 900.00),
(39, 27, 4, 3, 13, 1, 250.00),
(40, 28, 5, 5, 11, 2, 900.00),
(41, 19, 1, 5, 12, 1, 350.00);
