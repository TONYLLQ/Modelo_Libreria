--- INSERTAR DATOS A LA TABLA AUTOR ---

INSERT INTO grupo4.autor (nombre, apellido, nacionalidad) VALUES
    ('Isabel', 'Allende', 'Chilena'),
    ('Haruki', 'Murakami', 'Japonesa'),
    ('George', 'Orwell', 'Británica'),
    ('Gabriel', 'García', 'Colombiana'),
    ('Paulo', 'Coelho', 'Brasileña'),
    ('Agatha', 'Christie', 'Británica'),
    ('Ernest', 'Hemingway', 'Estadounidense'),
    ('J.R.R.', 'Tolkien', 'Británica'),
    ('Virginia', 'Woolf', 'Británica'),
    ('Fyodor', 'Dostoevsky', 'Rusa'),
    ('Hermann', 'Hesse', 'Alemán'),
    ('Isaac', 'Asimov', 'Ruso'),
    ('Toni', 'Morrison', 'Estadounidense'),
    ('Jorge Luis', 'Borges', 'Argentino'),
    ('H.G.', 'Wells', 'Británica'),
    ('Gabriela', 'Mistral', 'Chilena'),
    ('Albert', 'Camus', 'Francés'),
    ('Jane', 'Goodall', 'Británica'),
    ('Octavio', 'Paz', 'Mexicano'),
    ('Kazuo', 'Ishiguro', 'Británica'),
    ('Margaret', 'Atwood', 'Canadiense'),
    ('Pablo', 'Neruda', 'Chileno'),
    ('Isaac', 'Newton', 'Británico'),
    ('Jules', 'Verne', 'Francés');




--- INSERTAR DATOS A TABLA CATEGORIA ---

INSERT INTO grupo4.categoria (categoria) VALUES
    ('Fantasía'),
    ('Ciencia Ficción'),
    ('Misterio'),
    ('Romance'),
    ('Aventura'),
    ('Histórico'),
    ('Infantil'),
    ('Drama'),
    ('Poesía'),
    ('Humor'),
    ('Biografía'),
    ('Ensayo'),
    ('Terror'),
    ('Crimen'),
    ('Autoayuda');




--- INSERTAR DATOS A TABLA EDITORIAL ---

INSERT INTO grupo4.editorial (editorial, pais, ruc, direccion, correo, telefono) VALUES
	('Editorial Hispana', 'España', '111111111', 'Calle España 123, Madrid', 'info@editorialhispana.es', '+34 91 234 5678'),
	('Edizioni Italiane', 'Italia', '222222222', 'Via Italia 456, Roma', 'info@edizioniitaliane.it', '+39 06 1234 5678'),
	('Deutsche Verlag', 'Alemania', '333333333', 'Deutsche Straße 789, Berlín', 'info@deutscheverlag.de', '+49 30 1234 5678'),
	('Livre Française', 'Francia', '444444444', 'Rue de la Liberté 101, París', 'info@livrefrancaise.fr', '+33 1 2345 6789'),
	('Nihon Bunka Publications', 'Japón', '555555555', 'Tokyo Street 123, Tokyo', 'info@nihonbunka.jp', '+81 3 1234 5678'),
	('Chinese Cultural Press', 'China', '666666666', 'Beijing Road 456, Beijing', 'info@chineseculturalpress.cn', '+86 10 1234 5678'),
	('Editora Brasileira', 'Brasil', '777777777', 'Rua do Brasil 789, São Paulo', 'info@editorabrasileira.com.br', '+55 11 2345 6789'),
	('Russian Literature House', 'Rusia', '888888888', 'Literaturnaya Street 101, Moscow', 'info@russianliterature.ru', '+7 495 234 5678'),
	('African Story Publishers', 'Sudáfrica', '999999999', 'Safari Avenue 123, Johannesburg', 'info@africanstory.co.za', '+27 11 123 4567'),
	('Nordic Tales Publishing', 'Suecia', '123123123', 'Nordic Street 456, Stockholm', 'info@nordictales.se', '+46 8 1234 5678'),
	('Caribbean Novels Co.', 'Jamaica', '456456456', 'Tropical Lane 789, Kingston', 'info@caribbeannovels.com', '+1 876 234 5678'),
	('Oceanic Stories Ltd.', 'Australia', '789789789', 'Kangaroo Road 101, Sydney', 'info@oceanicstories.com.au', '+61 2 1234 5678'),
	('Antarctic Adventures', 'Antártida', '321321321', 'Iceberg Boulevard 123, McMurdo Station', 'info@antarcticadventures.com', '+672 1 234 5678'),
	('Indian Epic Publications', 'India', '654654654', 'Ganges Street 456, Varanasi', 'info@indianepic.in', '+91 542 123 4567'),
	('South American Narratives', 'Argentina', '987987987', 'Avenida de Mayo 789, Buenos Aires', 'info@southamericannarratives.com', '+54 11 2345 6789');




--- INSERTAR DATOS A TABLA AUTOR ---

INSERT INTO grupo4.libro (titulo, isbn, precio, editorial_id, stock) VALUES 
	
	-- Libros escritos por ('Isabel', 'Allende', 'Chilena')
	('La Casa de los Espíritus2', '5555555555', '25.99', 1, 15),
	('Eva Luna2', '5555555556', '22.99', 2, 12),
	('Paula2', '5555555557', '28.99', 3, 18),
	('El Bosque de los Pigmeos2', '5555555558', '30.99', 4, 20),
	('La Ciudad de las Bestias2', '5555555559', '26.99', 5, 22),

	-- Libros escritos por ('Haruki', 'Murakami', 'Japonesa')
	('Kafka en la Orilla', '6666666668', '26.99', 6, 18),
	('Sputnik, mi amor', '6666666669', '30.99', 7, 20),
	('Al Sur de la Frontera, al Oeste del Sol', '6666666670', '24.99', 8, 22),
	('1Q84', '6666666671', '32.99', 9, 15),
	('Norwegian Wood', '6666666672', '28.99', 10, 18),

	-- Libros escritos por ('George', 'Orwell', 'Británica')
	('1984', '7777777777', '34.99', 11, 15),
	('Rebelión en la granja', '7777777778', '29.99', 12, 12),
	('Homenaje a Cataluña', '7777777779', '25.99', 13, 18),
	('La carretera de Wigan Pier', '7777777780', '27.99', 14, 20),
	('Dentro de la ballena', '7777777781', '22.99', 15, 22),

	-- Libros escritos por ('Gabriel', 'García', 'Colombiana')
	('Cien años de soledad', '1111111111', '30.99', 1, 15),
	('El otoño del patriarca', '1111111112', '26.99', 2, 12),
	('Crónica de una muerte anunciada', '1111111113', '21.99', 3, 18),
	('El general en su laberinto', '1111111114', '28.99', 4, 20),
	('El amor en los tiempos del cólera', '1111111115', '32.99', 5, 22),

	-- Libros escritos por ('Paulo', 'Coelho', 'Brasileña')
	('El Alquimista', '8888888881', '28.99', 6, 15),
	('Brida', '8888888882', '24.99', 7, 12),
	('Verónika decide morir', '8888888883', '21.99', 8, 18),
	('Once minutos', '8888888884', '26.99', 9, 20),
	('El Zahir', '8888888885', '32.99', 10, 22),

	-- Libros escritos por ('Agatha', 'Christie', 'Británica')
	('Asesinato en el Orient Express', '7777777771', '25.99', 11, 20),
	('Diez negritos', '7777777772', '22.99', 12, 18),
	('El asesinato de Roger Ackroyd', '7777777773', '19.99', 13, 15),
	('Cianuro espumoso', '7777777774', '28.99', 14, 22),
	('Asesinato en Mesopotamia', '7777777775', '32.99', 15, 20),

	-- Libros escritos por ('Ernest', 'Hemingway', 'Estadounidense')
	('El viejo y el mar', '1888888881', '30.99', 1, 15),
	('Por quién doblan las campanas', '2288888882', '26.99', 2, 12),
	('Fiesta', '3888888883', '21.99', 3, 18),
	('Adiós a las armas', '4888888884', '28.99', 4, 22),
	('París era una fiesta', '5888888885', '35.99', 5, 20),

	-- Libros escritos por ('J.R.R.', 'Tolkien', 'Británica')
	('El Hobbit', '9999999994', '34.99', 6, 15),
	('El Silmarillion', '9999999995', '29.99', 7, 12),
	('El Señor de los Anillos: La Comunidad del Anillo', '9999999991', '40.99', 8, 18),
	('El Señor de los Anillos: Las Dos Torres', '9999999992', '36.99', 9, 20),
	('El Señor de los Anillos: El Retorno del Rey', '9999999993', '32.99', 10, 22),

	-- Libros escritos por ('Virginia', 'Woolf', 'Británica')
	('La Casa de los Espíritus', '1555555555', '25.99', 11, 15),
	('Eva Luna', '1555555556', '22.99', 12, 12),
	('Paula', '1555555557', '28.99', 13, 18),
	('El Bosque de los Pigmeos', '1555555558', '30.99', 14, 20),
	('La Ciudad de las Bestias', '1555555559', '26.99', 15, 22),

	-- Libros escritos por ('Fyodor', 'Dostoevsky', 'Rusa')
	('Crimen y castigo', '1666666661', '35.99', 1, 15),
	('El jugador', '1666666662', '32.99', 2, 18),
	('Los endemoniados', '1666666663', '29.99', 3, 20),
	('El idiota', '1666666664', '27.99', 4, 22),
	('Noches blancas', '1666666665', '24.99', 5, 15),

	-- Libros escritos por ('Hermann', 'Hesse', 'Alemán')
	('El lobo estepario', '1777777771', '28.99', 6, 15),
	('Siddhartha', '1777777772', '24.99', 7, 18),
	('Bajo la rueda', '1777777773', '20.99', 8, 12),
	('Demian', '1777777774', '18.99', 9, 22),
	('El juego de los abalorios', '1777777775', '35.99', 10, 20),

	-- Libros escritos por ('Isaac', 'Asimov', 'Ruso')
	('Fundación', '2888888881', '32.99', 11, 15),
	('Yo, Robot', '2888888882', '26.99', 12, 18),
	('El fin de la eternidad', '2888888883', '24.99', 13, 12),
	('Segunda Fundación', '2888888884', '28.99', 14, 20),
	('Cánticos de la lejana Tierra', '2888888885', '30.99', 15, 22),

	-- Libros escritos por ('Toni', 'Morrison', 'Estadounidense')
	('Beloved', '2777777771', '28.99', 1, 15),
	('Ojos azules', '2777777772', '24.99', 2, 18),
	('Canción de Salomón', '2777777773', '32.99', 3, 12),
	('Querido/a', '2777777774', '26.99', 4, 22),
	('Paraíso', '2777777775', '30.99', 5, 20),

	-- Libros escritos por ('Jorge Luis', 'Borges', 'Argentino')
	('Ficciones', '3777777776', '35.99', 6, 20),
	('El Aleph', '3777777777', '32.99', 7, 18),
	('Ficciones completas', '3777777778', '38.99', 8, 15),
	('Otras inquisiciones', '3777777779', '30.99', 9, 25),
	('El informe de Brodie', '3777777780', '34.99', 10, 22),

	-- Libros escritos por ('H.G.', 'Wells', 'Británica')
	('La guerra de los mundos', '4777777781', '26.99', 11, 18),
	('El hombre invisible', '4777777782', '24.99', 12, 15),
	('La máquina del tiempo', '4777777783', '30.99', 13, 12),
	('La isla del Dr. Moreau', '4777777784', '28.99', 14, 20),
	('El hombre que podía hacer milagros', '4777777785', '32.99', 15, 22),

	-- Libros escritos por ('Gabriela', 'Mistral', 'Chilena')
	('Lagar', '5777777786', '22.99', 1, 15),
	('Desolación', '5777777787', '18.99', 2, 20),
	('Lagar II', '5777777788', '24.99', 3, 18),
	('Lagar III', '5777777789', '26.99', 4, 22),
	('Lagar IV', '5777777790', '28.99', 5, 25),

	-- Libros escritos por ('Albert', 'Camus', 'Francés')
	('El extranjero', '6777777791', '30.99', 6, 18),
	('La peste', '6777777792', '32.99', 7, 22),
	('La caída', '6777777793', '28.99', 8, 15),
	('Calígula', '6777777794', '26.99', 9, 20),
	('El mito de Sísifo', '6777777795', '24.99', 10, 12),

	-- Libros escritos por ('Jane', 'Goodall', 'Británica')
	('En la Sombra de Man', '8777777796', '25.99', 11, 22),
	('La Sombra de Man', '8777777797', '30.99', 12, 18),
	('Reason for Hope', '8777777798', '28.99', 13, 15),
	('Through a Window', '8777777799', '32.99', 14, 20),
	('Innocent Killers', '8777777800', '26.99', 15, 22),

	-- Libros escritos por ('Octavio', 'Paz', 'Mexicano')
	('El laberinto de la soledad', '9777777801', '24.99', 1, 20),
	('Piedra de sol', '9777777802', '28.99', 2, 15),
	('Libertad bajo palabra', '9777777803', '30.99', 3, 22),
	('Los hijos del limo', '9777777804', '26.99', 4, 18),
	('Sor Juana Inés de la Cruz', '9777777805', '32.99', 5, 25),

	-- Libros escritos por ('Kazuo', 'Ishiguro', 'Británica')
	('Nunca me abandones', '7777777806', '28.99', 6, 22),
	('Los restos del día', '7777777807', '32.99', 7, 18),
	('El gigante enterrado', '7777777808', '26.99', 8, 15),
	('Lo que queda del día', '7777777809', '30.99', 9, 20),
	('El paseo de la fama', '7777777810', '24.99', 10, 12);




--- INSERTAR DATOS A TABLA LIBRO_DETALLE ---

INSERT INTO grupo4.libro_detalle (libro_id, autor_id) VALUES

	-- Libros escritos por ('Isabel', 'Allende', 'Chilena')
	(1, 1), (2, 1), (3, 1), (4, 1), (5, 1),

	-- Libros escritos por ('Haruki', 'Murakami', 'Japonesa')
	(6, 2), (7, 2), (8, 2), (9, 2), (10, 2),

	-- Libros escritos por ('George', 'Orwell', 'Británica')
	(11, 3), (12, 3), (13, 3), (14, 3), (15, 3),

	-- Libros escritos por ('Gabriel', 'García Lorca', 'Española')
	(16, 4), (17, 4), (18, 4), (19, 4), (20, 4),

	-- Libros escritos por ('Paulo', 'Coelho', 'Brasileña')
	(21, 5), (22, 5), (23, 5), (24, 5), (25, 5),

	-- Libros escritos por ('Agatha', 'Christie', 'Británica')
	(26, 6), (27, 6), (28, 6), (29, 6), (30, 6),

	-- Libros escritos por ('Ernest', 'Hemingway', 'Estadounidense')
	(31, 7), (32, 7), (33, 7), (34, 7), (35, 7),

	-- Libros escritos por ('J.R.R.', 'Tolkien', 'Británica')
	(36, 8), (37, 8), (38, 8), (39, 8), (40, 8),

	-- Libros escritos por ('Virginia', 'Woolf', 'Británica')
	(41, 9), (42, 9), (43, 9), (44, 9), (45, 9),

	-- Libros escritos por ('Fyodor', 'Dostoevsky', 'Rusa')
	(46, 10), (47, 10), (48, 10), (49, 10), (50, 10),

	-- Libros escritos por ('Hermann', 'Hesse', 'Alemán')
	(51, 11), (52, 11), (53, 11), (54, 11), (55, 11),

	-- Libros escritos por ('Isaac', 'Asimov', 'Ruso')
	(56, 12), (57, 12), (58, 12), (59, 12), (60, 12),

	-- Libros escritos por ('Toni', 'Morrison', 'Estadounidense')
	(61, 13), (62, 13), (63, 13), (64, 13), (65, 13),

	-- Libros escritos por ('Jorge Luis', 'Borges', 'Argentino')
	(66, 14), (67, 14), (68, 14), (69, 14), (70, 14),

	-- Libros escritos por ('H.G.', 'Wells', 'Británica')
	(71, 15), (72, 15), (73, 15), (74, 15), (75, 15),

	-- Libros escritos por ('Gabriela', 'Mistral', 'Chilena')
	(76, 16), (77, 16), (78, 16), (79, 16), (80, 16),

	-- Libros escritos por ('Albert', 'Camus', 'Francés')
	(81, 17), (82, 17), (83, 17), (84, 17), (85, 17),

	-- Libros escritos por ('Jane', 'Goodall', 'Británica')
	(86, 18), (87, 18), (88, 18), (89, 18), (90, 18),

	-- Libros escritos por ('Octavio', 'Paz', 'Mexicano')
	(91, 19), (92, 19), (93, 19), (94, 19), (95, 19),

	-- Libros escritos por ('Kazuo', 'Ishiguro', 'Británica')
	(96, 20), (97, 20), (98, 20), (99, 20), (100, 20);

	-- Relación muchos a muchos entre libros y autores para los 6 autores

INSERT INTO grupo4.libro_detalle (libro_id, autor_id) VALUES

	(1, 10), (2, 15), (3, 17), (4, 20), (5, 2), (6, 7), (7, 8), (8, 13), (9, 3), (10, 3), (11, 14), (12, 4), (13, 2), (14, 6);




--- INSERTAR DATOS A TABLA CATEGORIA_DETALLE ---

INSERT INTO grupo4.categoria_detalle(categoria_id, libro_id) VALUES
	(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6),(1,91),
	(2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12),(2,92),
	(3, 13), (3, 14), (3, 15), (3, 16), (3, 17), (3, 18),(3,93),
	(4, 19), (4, 20), (4, 21), (4, 22), (4, 23), (4, 24),(4,94),
	(5, 25), (5, 26), (5, 27), (5, 28), (5, 29), (5, 30),(5,95),
	(6, 31), (6, 32), (6, 33), (6, 34), (6, 35), (6, 36),(6,96),
	(7, 37), (7, 38), (7, 39), (7, 40), (7, 41), (7, 42),(7,97),
	(8, 43), (8, 44), (8, 45), (8, 46), (8, 47), (8, 48),(8,98),
	(9, 49), (9, 50), (9, 51), (9, 52), (9, 53), (9, 54),(9,99),
	(10, 55), (10, 56), (10, 57), (10, 58), (10, 59), (10, 60),(10,100),
	(11, 61), (11, 62), (11, 63), (11, 64), (11, 65), (11, 66),
	(12, 67), (12, 68), (12, 69), (12, 70), (12, 71), (12, 72),
	(13, 73), (13, 74), (13, 75), (13, 76), (13, 77), (13, 78),
	(14, 79), (14, 80), (14, 81), (14, 82), (14, 83), (14, 84),
	(15, 85), (15, 86), (15, 87), (15, 88), (15, 89), (15, 90);


--- INSERTAR DATOS A TABLA SUCURSALES ---

-- Sucursales de una librería en Lima, Perú

INSERT INTO grupo4.sucursal (nombre, direccion) VALUES
	('Libros del Sol - Miraflores', 'Av. Larco 123, Miraflores, Lima'),
	('Libros del Sol - San Isidro', 'Calle de los Libros 456, San Isidro, Lima'),
	('Libros del Sol - Barranco', 'Av. Bolognesi 789, Barranco, Lima'),
	('Libros del Sol - Jesús María', 'Calle de la Cultura 234, Jesús María, Lima'),
	('Libros del Sol - La Molina', 'Av. Las Acacias 567, La Molina, Lima');




--- INSERTAR DATOS A TABLA EMPLEADOS ---

INSERT INTO grupo4.empleado (nombre, apellido, dni, direccion, telefono, edad) VALUES
	('Juan', 'Fernández', '52032148', 'Avenida de la Paz 444', '555-000-1111', 38),
	('Ana', 'Gómez', '74561234', 'Calle de la Armonía 123', '555-111-2222', 28),
	('Carlos', 'Rodríguez', '89076543', 'Av. del Progreso 789', '555-222-3333', 29),
	('Luisa', 'Martínez', '65432109', 'Calle de la Esperanza 567', '555-333-4444', 35),
	('Javier', 'López', '98765432', 'Av. de la Victoria 210', '555-444-5555', 31),
	('María', 'Sánchez', '12345678', 'Calle del Éxito 876', '555-555-6666', 40),
	('Pedro', 'Pérez', '23456789', 'Av. de la Alegría 543', '555-666-7777', 29),
	('Laura', 'Díaz', '56789012', 'Calle de la Tranquilidad 678', '555-777-8888', 35),
	('Alejandro', 'Ruiz', '67890123', 'Av. de la Serenidad 987', '555-888-9999', 33),
	('Isabel', 'Hernández', '90123456', 'Calle de la Paciencia 432', '555-999-0000', 36);



--- INSERTAR DATOS A TABLA CLIENTES ---

INSERT INTO grupo4.cliente (nombre, apellido, direccion, correo, telefono) VALUES
	('Juan', 'Perez', 'Calle Evitamiento 798', 'juan.perez@email.com', '991274567'),
	('Ana', 'Gomez', 'Av. Progreso 123', 'ana.gomez@email.com', '992345678'),
	('Carlos', 'Rodriguez', 'Calle Esperanza 456', 'carlos.rodriguez@email.com', '993556789'),
	('Laura', 'Diaz', 'Av. Victoria 789', 'laura.diaz@email.com', '994267890'),
	('Diego', 'Fernandez', 'Calle Alegria 210', 'diego.fernandez@email.com', '995778901'),
	('María', 'López', 'Calle Exito 111', 'maria.lopez@email.com', '996789012'),
	('Alejandro', 'Ruiz', 'Av. Alegría 222', 'alejandro.ruiz@email.com', '997890123'),
	('Isabel', 'Hernández', 'Calle Tranquilidad 333', 'isabel.hernandez@email.com', '998911234'),
	('Eduardo', 'Martínez', 'Av. Serenidad 444', 'eduardo.martinez@email.com', '999010345'),
	('Sofía', 'García', 'Calle Paciencia 555', 'sofia.garcia@email.com', '98876832'),
	('Gabriel', 'Fuentes', 'Av. Fortaleza 666', 'gabriel.fuentes@email.com', '987654331'),
	('Paula', 'Santos', 'Calle Sabiduría 777', 'paula.santos@email.com', '986543110'),
	('Jorge', 'Ríos', 'Av. Resiliencia 888', 'jorge.rios@email.com', '985435109'),
	('Verónica', 'Mendoza', 'Calle Gratitud 999', 'veronica.mendoza@email.com', '984328098'),
	('Héctor', 'Díaz', 'Av. Esperanza 1010', 'hector.diaz@email.com', '983210987'),
	('Camila', 'Torres', 'Calle Perseverancia 1111', 'camila.torres@email.com', '982100876'),
	('Miguel', 'Herrera', 'Av. Libertad 1212', 'miguel.herrera@email.com', '981098705'),
	('Valentina', 'Cruz', 'Calle Tolerancia 1313', 'valentina.cruz@email.com', '980887654'),
	('Andrés', 'Vargas', 'Av. Solidaridad 1414', 'andres.vargas@email.com', '979876543'),
	('Florencia', 'Pérez', 'Calle Pacifica 1515', 'florencia.perez@email.com', '978765032'),
	('Sebastián', 'Gómez', 'Av. Victoria 1616', 'sebastian.gomez@email.com', '977654021'),
	('Catalina', 'Ramírez', 'Calle Amistad 1717', 'catalina.ramirez@email.com', '976503210'),
	('Martín', 'López', 'Av. Generosidad 1818', 'martin.lopez@email.com', '975432009'),
	('Antonella', 'Silva', 'Calle Honestidad 1919', 'antonella.silva@email.com', '974327098'),
	('Javier', 'Gutierrez', 'Av. Justicia 2020', 'javier.gutierrez@email.com', '973210087'),
	('Isabella', 'Ortega', 'Calle Confiabilidad 2121', 'isabella.ortega@email.com', '972109076'),
	('Ignacio', 'Hernández', 'Av. Sencillez 2222', 'ignacio.hernandez@email.com', '971098705'),
	('Lucía', 'Sánchez', 'Calle Humildad 2323', 'lucia.sanchez@email.com', '970907654'),
	('Felipe', 'Ramírez', 'Av. Perseverancia 2424', 'felipe.ramirez@email.com', '979076593'),
	('Gabriela', 'Pérez', 'Calle Alegría 2525', 'gabriela.perez@email.com', '978765402'),
	('Bruno', 'Torres', 'Av. Amabilidad 2626', 'bruno.torres@email.com', '977054321'),
	('Valeria', 'Gómez', 'Calle Respeto 2727', 'valeria.gomez@email.com', '976503217'),
	('Matías', 'López', 'Av. Paz 2828', 'matias.lopez@email.com', '975432159'),
	('Regina', 'Silva', 'Calle Empatía 2929', 'regina.silva@email.com', '904321098');




--- INSERTAR DATOS A TABLA VENTAS ---

-- Generar ventas en un intervalo de 2 años (365 * 2 días)
DECLARE @StartDate DATE = '2022-01-01';
DECLARE @EndDate DATE = DATEADD(DAY, 365 * 2, @StartDate);

-- Declarar la variable de tabla para almacenar IDs de ventas
DECLARE @VentasIds TABLE (VentaId INT);

-- Insertar 500 ventas de manera aleatoria en el intervalo de fechas
INSERT INTO grupo4.ventas (fecha, cliente_id, empleado_id, sucursal_id)
OUTPUT INSERTED.ventas_id INTO @VentasIds (VentaId) -- Capturar los VentaId generados
SELECT 
    DATEADD(DAY, ABS(CHECKSUM(NEWID())) % (1 + DATEDIFF(DAY, @StartDate, @EndDate)), @StartDate),
    ABS(CHECKSUM(NEWID())) % 34 + 1,  -- Cliente_id aleatorio entre 1 y 34
    ABS(CHECKSUM(NEWID())) % 10 + 1,  -- Empleado_id aleatorio entre 1 y 10
    ABS(CHECKSUM(NEWID())) % 5 + 1   -- Sucursal_id aleatorio entre 1 y 5
FROM sys.objects;  -- Utilizando sys.objects para generar números aleatorios

-- Seleccionar las primeras 500 ventas generadas
SELECT TOP 500 * FROM grupo4.ventas ORDER BY fecha;




--- INSERTAR DATOS A TABLA VENTAS_DETALLE ---

-- Insertar detalles de venta asociados a las 500 ventas generadas
INSERT INTO grupo4.ventas_detalle (cantidad, precio_final, libro_id, ventas_id)
SELECT TOP 500
    ABS(CHECKSUM(NEWID())) % 10 + 1,  -- Cantidad aleatoria entre 1 y 10
    ABS(CHECKSUM(NEWID())) % 100 + 1, -- Precio final aleatorio entre 1 y 100
    ABS(CHECKSUM(NEWID())) % 100 + 1,  -- Libro_id aleatorio entre 1 y 100
    VentaId
FROM @VentasIds;