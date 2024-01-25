--- INSERTAR TABLA AUTOR ---

INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Haruki','Murakami','Japonesa');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Gabriel','Garcia','Colombiana');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Carlos','Ruiz','Española');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Joanne','Rowling','Britanica');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('George','Orwell','Britanica');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Jane','Austen','Britanica');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Harper','Lee','Estadounidense');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Julio','Cortazar','Belga');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('Yuval','Harari','Israelí');
INSERT [grupo4].[autor]([nombre], [apellido], [nacionalidad]) VALUES ('John','Tolkien','Britanica');

GO

--- INSERTAR TABLA LIBRO ---

INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('El jardín de las palabras','1234567890','20.99','1','8');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('Cien años de soledad','0987654321','25.50','2','14');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('La sombra del viento','8869259978','22.75','3','5');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('Harry Potter y la piedra filosofal','6543210987','18.99','4','19');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('1984','5432109876','21.25','5','7');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('Orgullo y prejuicio','4321098765','19.50','6','12');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('Matar a un ruiseñor','2109876543','24.00','7','5');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('Rayuela','0123456789','23.50','8','17');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('Sapiens: De animales a dioses','9876543210','26.75','9','6');
INSERT [grupo4].[libro]([titulo], [isbn], [precio], [editorial_id], [stock]) VALUES ('El Señor de los Anillos: La Comunidad del Anillo','8765432109','29.99','10','11');

GO

--- INSERTAR TABLA EDITORIAL ---

INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Libros Fantásticos','Estados Unidos','1234567890','1234 Calle Imaginaria, Ciudad de los Libros, CA','info@librosfantasticos.com
','1 555-1234');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Ediciones Mágicas','Colombia','9876543210','5678 Avenida de las Letras, Macondo, MC','info@edicionesmagicas.co','57 123-456789');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Libros Misteriosos','España','7654321098','987 Plaza de las Historias, Barcelona, BCN','contacto@librosmisteriosos.es','34 987-654321');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Magia Editorial','Reino Unido
','6543210987','456 Calle de las Hechicerías, Hogwarts, UK','info@magiaeditorial.uk','44 20 1234-5678');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Control Total Libros','Oceania','5432109876','789 Plaza de la Vigilancia, Ciudad de la Verdad, OCE','ventas@controltotal-libros.com','1 987-654-3210');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Letras Elegantes','Reino Unido
','4321098765','234 Boulevard Literario, Londres, UK','contacto@letraselegantes.co.uk','44 20 9876-5432');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Libros Justicia','Estados Unidos
','2109876543','345 Avenida de los Derechos, Maycomb, AL
','contacto@librosjusticia.com','1 234-567-8901');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Laberinto Ediciones','Argentina','1234567849','876 Calle de los Caminos, Buenos Aires, BA
','ventas@laberintoediciones.ar','54 11 8765-4321');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Conocimiento Universal','Israel
','9876543210','567 Plaza del Conocimiento, Jerusalén, ISR
','info@conocimientouniversal.co.il','972 2 123-4567');
INSERT [grupo4].[editorial]([editorial], [pais], [ruc], [direccion], [correo], [telefono]) VALUES ('Tierras Épicas Editorial','Nueva Zelanda','8765432109','109 Montaña de las Aventuras, Hobbiton, NZ
','info@tierrasepicas.nz','54 11 8765-6345');

GO

--- INSERTAR TABLA CLIENTE ---

INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Juan','Perez','Calle Evitamiento 798','juan.perez@email.com','991234567');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Maria','Rodriguez','Avenida Principal 254','maria.rodriguez@email.com','992345678');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Roberto','Lopez','Calle de la Paz 1024','roberto.lopez@email.com','993456789');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Ana','Garcia','Plaza Central 369','ana.garcia@email.com','994567890');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Javier','Martinez','Paseo del Sol 1123','javier.martinez@email.com','995678901');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Laura','Hernandez','Calle Flores 5632','laura.hernandez@email.com','996789012');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Carlos','Soto','Avenida Libertad 380','carlos.soto@email.com','997890123');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Patricia','Torres','Calle del Bosque 1507','patricia.torres@email.com','998901234');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Alejandro','Vargas','Plaza Mayor  1247','alejandro.vargas@email.com','999012345');
INSERT [grupo4].[cliente]([nombre], [apellido], [direccion], [correo], [telefono]) VALUES ('Gabriela','Morales','Paseo del Río 968','gabriela.morales@email.com','991239876');

GO

--- INSERTAR TABLA CATEGORIA ---

INSERT [grupo4].[categoria]([categoria]) VALUES ('novela');
INSERT [grupo4].[categoria]([categoria]) VALUES ('novela');
INSERT [grupo4].[categoria]([categoria]) VALUES ('ficción');
INSERT [grupo4].[categoria]([categoria]) VALUES ('fantasia');
INSERT [grupo4].[categoria]([categoria]) VALUES ('ficción');
INSERT [grupo4].[categoria]([categoria]) VALUES ('novela');
INSERT [grupo4].[categoria]([categoria]) VALUES ('ficción');
INSERT [grupo4].[categoria]([categoria]) VALUES ('novela');
INSERT [grupo4].[categoria]([categoria]) VALUES ('ensayo');
INSERT [grupo4].[categoria]([categoria]) VALUES ('fantasia');

GO

--- INSERTAR TABLA EMPLEADO ---

INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Ana','Rodriguez','40124711','Calle Primavera 897','5551112222','25');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Javier','Gomez','45823645','Avenida Libertad 121','555-222-3333','32');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Maria','Fernandez','34567890','Calle del Sol 2024','555-333-4444','28');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Carlos','Sanchez','45678901','Plaza Principal 002','555-444-5555','40');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Laura','Martinez','56789012','Calle de la Luna 364','555-555-6666','22');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Roberto','Perez','67890123','Avenida Central 1058','555-666-7777','35');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Patricia','Torres ','78901234','Calle de los Sueños 698','555-777-8888','29');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Alejandro','Diaz','89012345','Plaza de la Esperanza 323','555-888-9999','31');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Gabriela','Lopez','90123456','Calle de las Estrellas 2020','555-999-0000','26');
INSERT [grupo4].[empleado]([nombre], [apellido], [dni], [direccion], [telefono], [edad]) VALUES ('Juan','Fernández','52032148','Avenida de la Paz 444','555-000-1111','38');

GO

--- INSERTAR TABLA SUCURSAL ---

INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Libros del Sol ','Calle de los Libros 560');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Páginas Encantadas','Avenida de la Imaginación 1028');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('El Rincón Literario','Plaza de las Letras 202');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Palabras Mágicas ','Calle de la Fantasía 1097');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Letras y Sueños','Avenida de los Cuentos 666');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Mundo de Libros','Calle de la Sabiduría 1000');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Biblioteca Esencial','Plaza de la Cultura 2045');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Hojas y Tintas','Avenida de las Páginas  252');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Rincones Literarios','Calle de los Poetas 333');
INSERT [grupo4].[sucursal]([nombre], [direccion]) VALUES ('Librería del conocimiento','Plaza del Saber 1256');

GO

--- INSERTAR TABLA VENTA ---

INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('15/01/2023','1','1','1');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('8/03/2023','2','2','2');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('22/05/2023','3','3','3');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('11/07/2023','4','4','4');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('4/09/2023','5','5','5');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('19/10/2023','6','6','6');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('1/12/2023','7','7','7');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('27/02/2023','8','8','8');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('14/06/2023','9','9','9');
INSERT [grupo4].[venta]([fecha], [cliente_id], [empleado_id], [sucursal_id]) VALUES ('30/08/2023','10','10','10');

GO

--- INSERTAR TABLA VENTA_DETALLE ---

INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('1','45.00','1','1');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');
INSERT [grupo4].[venta_detalle]([cantidad], [precio_final], [libro_id], [venta_id]) VALUES ('','','','');

GO

--- INSERTAR TABLA LIBRO_DETALLE ---

INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('1','1');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('2','2');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('3','3');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('4','4');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('5','5');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('6','6');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('7','7');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('8','8');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('9','9');
INSERT [grupo4].[libro_detalle]([libro_id], [autor_id]) VALUES ('10','10');

GO

--- INSERTAR TABLA CATEGORIA_DETALLE ---

INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('1','1');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('2','2');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('3','3');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('4','4');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('5','5');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('6','6');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('7','7');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('8','8');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('9','9');
INSERT [grupo4].[categoria_detalle]([categoria_id], [libro_id]) VALUES ('10','10');


