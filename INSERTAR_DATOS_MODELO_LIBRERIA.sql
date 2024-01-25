--- TABLA AUTOR ---
INSERT INTO grupo4.autor (nombre, apellido, nacionalidad) VALUES
('Gabriel', 'Garc�a M�rquez', 'Colombiana'),
('J.K.', 'Rowling', 'Brit�nica'),
('Leo', 'Tolstoy', 'Rusa'),
('Jane', 'Austen', 'Brit�nica'),
('Mark', 'Twain', 'Estadounidense'),
('Homer', '', 'Griega');

---- TABLA CATEGORIA ----
INSERT INTO grupo4.categoria (categoria) VALUES
('Realismo M�gico'),('Fantas�a'),('Cl�sico'),
('Rom�ntica'),('Humor'),('�pico');

---- TABLA EDITORIAL ----
INSERT INTO grupo4.editorial (editorial, pais, ruc, direccion, correo, telefono) VALUES
('Editorial Macondo', 'Colombia', '987654321', '123 Calle Macondo, Bogot�', 'info@macondo.com.co', '+57 1 2345 6789'),
('Magia Literaria Ltda.', 'Reino Unido', '876543210', '567 Magic Lane, London', 'info@magialiteraria.co.uk', '+44 20 1234 5678'),
('Ediciones Rusas', 'Rusia', '765432109', '910 Calle Rusa, Moscow', 'info@edicionesrusas.ru', '+7 495 123 4567'),
('Novelas Brit�nicas S.A.', 'Reino Unido', '654321098', '789 British Street, Manchester', 'info@novelasbritanicas.co.uk', '+44 161 234 5678'),
('Libros C�micos Inc.', 'Estados Unidos', '543210987', '1234 Comic Avenue, New York', 'info@libroscomicos.com', '+1 212 555 1234'),
('�pica Editorial Griega', 'Grecia', '432109876', '567 Epic Street, Athens', 'info@epicaeditorial.gr', '+30 210 123 4567');



----- TABLA AUTOR --------
-- Libros escritos por Gabriel Garc�a M�rquez (Colombiana)
INSERT INTO grupo4.libro (titulo, isbn, precio, editorial_id, stock) VALUES 
('Cien a�os de soledad', '1111111111', '30.99', 2, 15),
('El oto�o del patriarca', '1111111112', '26.99', 2, 12),
('Cr�nica de una muerte anunciada', '1111111113', '21.99', 2, 18),

-- Libros escritos por J.K. Rowling (Brit�nica)
('Harry Potter y la piedra filosofal', '2222222222', '35.99', 3, 20),
('Harry Potter y la c�mara secreta', '2222222223', '32.99', 3, 18),
('Harry Potter y el prisionero de Azkaban', '2222222224', '29.99', 3, 15),
('Harry Potter y el c�liz de fuego', '2222222225', '38.99', 3, 22),

-- Libros escritos por Leo Tolstoy (Rusa)
('Guerra y paz', '3333333333', '40.99', 4, 25),
('Anna Kar�nina', '3333333334', '36.99', 4, 22),
('La muerte de Iv�n Ilich', '3333333335', '31.99', 4, 20),

-- Libros escritos por Jane Austen (Brit�nica)
('Orgullo y prejuicio', '4444444444', '28.99', 5, 18),
('Sentido y sensibilidad', '4444444445', '24.99', 5, 15),
('Emma', '4444444446', '20.99', 5, 12),

-- Libros escritos por otros autores (continuaci�n)
('La Odisea', '8888888888', '19.99', 6, 30);

--- TABLA DETALLE LIBRO ---
INSERT INTO grupo4.libro_detalle (libro_id, autor_id) VALUES
(1, 1), -- Cien a�os de soledad - Gabriel Garc�a M�rquez
(2, 1), -- El oto�o del patriarca - Gabriel Garc�a M�rquez
(3, 1), -- Cr�nica de una muerte anunciada - Gabriel Garc�a M�rquez
(4, 2), -- Harry Potter y la piedra filosofal - J.K. Rowling
(5, 2), -- Harry Potter y la c�mara secreta - J.K. Rowling
(6, 2), -- Harry Potter y el prisionero de Azkaban - J.K. Rowling
(7, 2),
(8, 3), -- Guerra y paz - Leo Tolstoy
(9, 3), -- Anna Kar�nina - Leo Tolstoy
(10, 3), -- La muerte de Iv�n Ilich - Leo Tolstoy
(11, 4), -- Orgullo y prejuicio - Jane Austen
(12, 4), -- Sentido y sensibilidad - Jane Austen
(13, 4), -- Emma - Jane Austen
(14, 6); -- La Odisea - Homer

-- Relaci�n muchos a muchos entre libros y autores para los 6 autores
INSERT INTO grupo4.libro_detalle (libro_id, autor_id) VALUES
(1, 1), -- Cien a�os de soledad - Gabriel Garc�a M�rquez
(2, 1), -- El oto�o del patriarca - Gabriel Garc�a M�rquez
(3, 1), -- Cr�nica de una muerte anunciada - Gabriel Garc�a M�rquez
(4, 2), -- Harry Potter y la piedra filosofal - J.K. Rowling
(5, 2), -- Harry Potter y la c�mara secreta - J.K. Rowling
(6, 2), -- Harry Potter y el prisionero de Azkaban - J.K. Rowling
(7, 2),
(8, 3), -- Guerra y paz - Leo Tolstoy
(9, 3), -- Anna Kar�nina - Leo Tolstoy
(10, 3), -- La muerte de Iv�n Ilich - Leo Tolstoy
(11, 4), -- Orgullo y prejuicio - Jane Austen
(12, 4), -- Sentido y sensibilidad - Jane Austen
(13, 4), -- Emma - Jane Austen
(14, 6); -- La Odisea - Homer


-- Sucursales de una librer�a en Lima, Per�
INSERT INTO grupo4.sucursal (nombre, direccion) VALUES
('Libros del Sol - Miraflores', 'Av. Larco 123, Miraflores, Lima'),
('Libros del Sol - San Isidro', 'Calle de los Libros 456, San Isidro, Lima'),
('Libros del Sol - Barranco', 'Av. Bolognesi 789, Barranco, Lima'),
('Libros del Sol - Jes�s Mar�a', 'Calle de la Cultura 234, Jes�s Mar�a, Lima'),
('Libros del Sol - La Molina', 'Av. Las Acacias 567, La Molina, Lima');


-- Empleados con edades entre 22 y 40
INSERT INTO grupo4.empleado (nombre, apellido, dni, direccion, telefono, edad) VALUES
('Juan', 'Fern�ndez', '52032148', 'Avenida de la Paz 444', '555-000-1111', 38),
('Ana', 'G�mez', '74561234', 'Calle de la Armon�a 123', '555-111-2222', 28),
('Carlos', 'Rodr�guez', '89076543', 'Av. del Progreso 789', '555-222-3333', 29),
('Luisa', 'Mart�nez', '65432109', 'Calle de la Esperanza 567', '555-333-4444', 35),
('Javier', 'L�pez', '98765432', 'Av. de la Victoria 210', '555-444-5555', 31),
('Mar�a', 'S�nchez', '12345678', 'Calle del �xito 876', '555-555-6666', 40),
('Pedro', 'P�rez', '23456789', 'Av. de la Alegr�a 543', '555-666-7777', 29),
('Laura', 'D�az', '56789012', 'Calle de la Tranquilidad 678', '555-777-8888', 35),
('Alejandro', 'Ruiz', '67890123', 'Av. de la Serenidad 987', '555-888-9999', 33),
('Isabel', 'Hern�ndez', '90123456', 'Calle de la Paciencia 432', '555-999-0000', 36);


-- Clientes con correos y tel�fonos �nicos
INSERT INTO grupo4.cliente (nombre, apellido, direccion, correo, telefono) VALUES
('Juan', 'Perez', 'Calle Evitamiento 798', 'juan.perez@email.com', '991274567'),
('Ana', 'Gomez', 'Av. Progreso 123', 'ana.gomez@email.com', '992345678'),
('Carlos', 'Rodriguez', 'Calle Esperanza 456', 'carlos.rodriguez@email.com', '993556789'),
('Laura', 'Diaz', 'Av. Victoria 789', 'laura.diaz@email.com', '994267890'),
('Diego', 'Fernandez', 'Calle Alegria 210', 'diego.fernandez@email.com', '995778901'),
('Mar�a', 'L�pez', 'Calle Exito 111', 'maria.lopez@email.com', '996789012'),
('Alejandro', 'Ruiz', 'Av. Alegr�a 222', 'alejandro.ruiz@email.com', '997890123'),
('Isabel', 'Hern�ndez', 'Calle Tranquilidad 333', 'isabel.hernandez@email.com', '998911234'),
('Eduardo', 'Mart�nez', 'Av. Serenidad 444', 'eduardo.martinez@email.com', '999010345'),
('Sof�a', 'Garc�a', 'Calle Paciencia 555', 'sofia.garcia@email.com', '98876832'),
('Gabriel', 'Fuentes', 'Av. Fortaleza 666', 'gabriel.fuentes@email.com', '987654331'),
('Paula', 'Santos', 'Calle Sabidur�a 777', 'paula.santos@email.com', '986543110'),
('Jorge', 'R�os', 'Av. Resiliencia 888', 'jorge.rios@email.com', '985435109'),
('Ver�nica', 'Mendoza', 'Calle Gratitud 999', 'veronica.mendoza@email.com', '984328098'),
('H�ctor', 'D�az', 'Av. Esperanza 1010', 'hector.diaz@email.com', '983210987'),
('Camila', 'Torres', 'Calle Perseverancia 1111', 'camila.torres@email.com', '982100876'),
('Miguel', 'Herrera', 'Av. Libertad 1212', 'miguel.herrera@email.com', '981098705'),
('Valentina', 'Cruz', 'Calle Tolerancia 1313', 'valentina.cruz@email.com', '980887654'),
('Andr�s', 'Vargas', 'Av. Solidaridad 1414', 'andres.vargas@email.com', '979876543'),
('Florencia', 'P�rez', 'Calle Pacifica 1515', 'florencia.perez@email.com', '978765032'),
('Sebasti�n', 'G�mez', 'Av. Victoria 1616', 'sebastian.gomez@email.com', '977654021'),
('Catalina', 'Ram�rez', 'Calle Amistad 1717', 'catalina.ramirez@email.com', '976503210'),
('Mart�n', 'L�pez', 'Av. Generosidad 1818', 'martin.lopez@email.com', '975432009'),
('Antonella', 'Silva', 'Calle Honestidad 1919', 'antonella.silva@email.com', '974327098'),
('Javier', 'Gutierrez', 'Av. Justicia 2020', 'javier.gutierrez@email.com', '973210087'),
('Isabella', 'Ortega', 'Calle Confiabilidad 2121', 'isabella.ortega@email.com', '972109076'),
('Ignacio', 'Hern�ndez', 'Av. Sencillez 2222', 'ignacio.hernandez@email.com', '971098705'),
('Luc�a', 'S�nchez', 'Calle Humildad 2323', 'lucia.sanchez@email.com', '970907654'),
('Felipe', 'Ram�rez', 'Av. Perseverancia 2424', 'felipe.ramirez@email.com', '979076593'),
('Gabriela', 'P�rez', 'Calle Alegr�a 2525', 'gabriela.perez@email.com', '978765402'),
('Bruno', 'Torres', 'Av. Amabilidad 2626', 'bruno.torres@email.com', '977054321'),
('Valeria', 'G�mez', 'Calle Respeto 2727', 'valeria.gomez@email.com', '976503217'),
('Mat�as', 'L�pez', 'Av. Paz 2828', 'matias.lopez@email.com', '975432159'),
('Regina', 'Silva', 'Calle Empat�a 2929', 'regina.silva@email.com', '904321098');


---- genera 500 ventas aleatorias 
-- Variables
-- Variables
DECLARE @StartDate DATE = '2022-01-01';
DECLARE @EndDate DATE = DATEADD(DAY, 365 * 2, @StartDate);

-- Declarar la variable de tabla para almacenar IDs de ventas
DECLARE @VentasIds TABLE (VentaId INT);

-- Insertar 500 ventas de manera aleatoria en el intervalo de fechas
INSERT INTO grupo4.ventas (fecha, cliente_id, empleado_id, sucursal_id)
OUTPUT INSERTED.ventas_id INTO @VentasIds
SELECT 
    DATEADD(DAY, ABS(CHECKSUM(NEWID())) % (1 + DATEDIFF(DAY, @StartDate, @EndDate)), @StartDate),
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 34 + 1,  -- Cliente_id aleatorio entre 1 y 34
    ABS(CHECKSUM(NEWID())) % 10 + 1,  -- Empleado_id aleatorio entre 1 y 10
    ABS(CHECKSUM(NEWID())) % 5 + 1   -- Sucursal_id aleatorio entre 1 y 5
FROM master.dbo.spt_values;  -- Utilizando una tabla auxiliar para generar n�meros aleatorios

-- Insertar detalles de venta asociados a las 500 ventas generadas
INSERT INTO grupo4.ventas_detalle (cantidad, precio_final, libro_id, ventas_id)
SELECT TOP 500
    ABS(CHECKSUM(NEWID())) % 10 + 1,  -- Cantidad aleatoria entre 1 y 10
    ABS(CHECKSUM(NEWID())) % 100 + 1, -- Precio final aleatorio entre 1 y 100
    ABS(CHECKSUM(NEWID())) % 10 + 1,  -- Libro_id aleatorio entre 1 y 10
    VentaId
FROM @VentasIds;
