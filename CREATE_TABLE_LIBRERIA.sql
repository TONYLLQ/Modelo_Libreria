USE ucontinental;

GO
---- VALIDACION DE TABLAS ----
/*1:*/  IF OBJECT_ID ('grupo4.ventas_detalle') IS NOT NULL DROP TABLE grupo4.ventas_detalle;
/*2:*/  IF OBJECT_ID ('grupo4.libro_detalle') IS NOT NULL DROP TABLE grupo4.libro_detalle;
/*3:*/  IF OBJECT_ID ('grupo4.categoria_detalle') IS NOT NULL DROP TABLE grupo4.categoria_detalle;
/*4:*/  IF OBJECT_ID ('grupo4.ventas') IS NOT NULL DROP TABLE grupo4.ventas;
/*5:*/  IF OBJECT_ID ('grupo4.autor') IS NOT NULL DROP TABLE grupo4.autor;
/*6:*/  IF OBJECT_ID ('grupo4.libro') IS NOT NULL DROP TABLE grupo4.libro;
/*7:*/  IF OBJECT_ID ('grupo4.editorial') IS NOT NULL DROP TABLE grupo4.editorial;
/*8:*/  IF OBJECT_ID ('grupo4.cliente') IS NOT NULL DROP TABLE grupo4.cliente;
/*9:*/  IF OBJECT_ID ('grupo4.categoria') IS NOT NULL DROP TABLE grupo4.categoria;
/*10:*/ IF OBJECT_ID ('grupo4.empleado') IS NOT NULL DROP TABLE grupo4.empleado;
/*11:*/ IF OBJECT_ID ('grupo4.sucursal') IS NOT NULL DROP TABLE grupo4.sucursal;



GO
---- CREACION DE TABLAS ----

CREATE TABLE grupo4.autor (

  autor_id INT NOT NULL IDENTITY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR (50) NOT NULL,
  nacionalidad VARCHAR (50) NOT NULL

);


CREATE TABLE  grupo4.editorial (

  editorial_id INT NOT NULL IDENTITY,
  editorial VARCHAR (50) NOT NULL, --VALOR UNICO
  pais VARCHAR (50) NOT NULL,
  ruc CHAR (11) NOT NULL, --VALOR UNICO
  direccion VARCHAR(100) NOT NULL, 
  correo VARCHAR(50) NOT NULL, --VALOR UNICO
  telefono VARCHAR (20) NOT NULL --VALOR UNICO

);


CREATE TABLE grupo4.libro(

  libro_id INT IDENTITY NOT NULL,
  titulo VARCHAR(50) NOT NULL, --VALOR UNICO
  isbn CHAR(10) NOT NULL, --VALOR UNICO
  precio DECIMAL (5,2) NOT NULL,
  editorial_id INT NOT NULL,
  stock INT NOT NULL 

);



CREATE TABLE grupo4.libro_detalle(
  
  libro_detalle_id INT IDENTITY NOT NULL,
    libro_id INT NOT NULL, -- FK
    autor_id INT NOT NULL -- FK
);



CREATE TABLE grupo4.categoria(
  
    categoria_id INT IDENTITY NOT NULL,
    categoria VARCHAR (50) NOT NULL, --VALOR UNICO

);



CREATE TABLE grupo4.categoria_detalle(
    
    categoria_detalle_id INT IDENTITY NOT NULL,
    categoria_id INT NOT NULL, --FK
    libro_id INT NOT NULL --FK

);


CREATE TABLE grupo4.cliente(

  cliente_id INT IDENTITY NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  telefono CHAR(20) NOT NULL, --VALOR UNICO
  direccion VARCHAR(50)  NULL, 
  correo VARCHAR(50) NOT NULL --VALOR UNICO
  
);



CREATE TABLE grupo4.empleado(

  empleado_id INT IDENTITY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    dni CHAR(8) NOT NULL, --VALOR UNICO
    direccion VARCHAR(50) NULL,
    telefono CHAR(20) NOT NULL, --VALOR UNICO
    edad INT NOT NULL
);



CREATE TABLE grupo4.sucursal(
  
  sucursal_id INT IDENTITY NOT NULL,
  nombre VARCHAR(50) NOT NULL, --VALOR UNICO
  direccion VARCHAR(50) NOT NULL

);



CREATE TABLE grupo4.ventas(
  
  ventas_id INT IDENTITY NOT NULL,
  fecha DATE NOT NULL,
  cliente_id INT NOT NULL, --FK
  empleado_id INT NOT NULL, --FK
  sucursal_id INT NOT NULL --FK
);



CREATE TABLE grupo4.ventas_detalle(
  
  ventas_detalle_id  INT IDENTITY NOT NULL,
  cantidad INT NOT NULL, -- CHECK MAYOR DE CERO
  precio_final DECIMAL(5,2) NOT NULL, -- CHECK MAYOR O IGUAL A CERO
  libro_id INT NOT NULL, --FK
  ventas_id INT NOT NULL, --FK

);

GO
----- RESTRICCION DE CLAVE PRIMARIA DE LAS TABLAS -----

ALTER TABLE  grupo4.autor ADD CONSTRAINT pk_autor_id PRIMARY KEY (autor_id);
ALTER TABLE  grupo4.editorial ADD CONSTRAINT PK_editorial_id PRIMARY KEY (editorial_id);
ALTER TABLE  grupo4.libro ADD CONSTRAINT PK_libro_id PRIMARY KEY (libro_id);
ALTER TABLE  grupo4.libro_detalle ADD CONSTRAINT pk_libro_detalle_id PRIMARY KEY (libro_detalle_id);
ALTER TABLE  grupo4.categoria ADD CONSTRAINT PK_categoria_id PRIMARY KEY (categoria_id);
ALTER TABLE  grupo4.categoria_detalle ADD CONSTRAINT PK_categoria_detalle_id PRIMARY KEY (categoria_detalle_id);
ALTER TABLE  grupo4.cliente ADD CONSTRAINT PK_cliente_id PRIMARY KEY (cliente_id);
ALTER TABLE  grupo4.empleado ADD CONSTRAINT pk_empleado_id PRIMARY KEY (empleado_id);
ALTER TABLE  grupo4.sucursal ADD CONSTRAINT PK_sucursal_id PRIMARY KEY (sucursal_id);
ALTER TABLE  grupo4.ventas ADD CONSTRAINT PK_ventas_id PRIMARY KEY (ventas_id);
ALTER TABLE  grupo4.ventas_detalle ADD CONSTRAINT pk_ventas_detalle_id PRIMARY KEY (ventas_detalle_id);

GO

---- RESTRICCIONES DE VALORES UNICOS DE LAS TABLAS ----
ALTER TABLE grupo4.editorial ADD CONSTRAINT UQ_editorial UNIQUE (editorial);
ALTER TABLE grupo4.editorial ADD CONSTRAINT UQ_ruc UNIQUE (ruc);
ALTER TABLE grupo4.editorial ADD CONSTRAINT UQ_correo_editorial UNIQUE (correo);
ALTER TABLE grupo4.editorial ADD CONSTRAINT UQ_telefono UNIQUE (telefono);
ALTER TABLE grupo4.libro ADD CONSTRAINT UQ_titulo UNIQUE (titulo);
ALTER TABLE grupo4.libro ADD CONSTRAINT UQ_isbn UNIQUE (isbn);
ALTER TABLE grupo4.categoria ADD CONSTRAINT UQ_categoria UNIQUE (categoria);
ALTER TABLE grupo4.cliente ADD CONSTRAINT UQ_telefono_cliente UNIQUE (telefono);
ALTER TABLE grupo4.cliente ADD CONSTRAINT UQ_correo_cliente UNIQUE (correo); 
ALTER TABLE grupo4.empleado ADD CONSTRAINT UQ_telefono_empleado UNIQUE (telefono);
ALTER TABLE grupo4.empleado ADD CONSTRAINT UQ_dni UNIQUE (dni);
ALTER TABLE grupo4.sucursal ADD CONSTRAINT UQ_nombre UNIQUE (nombre);


GO

---- RESTRICCION DE VALOR CHECK DE LAS TABLAS ----
ALTER TABLE grupo4.libro ADD CONSTRAINT CHK_precio  CHECK (precio > 0 );
ALTER TABLE grupo4.libro ADD CONSTRAINT CHK_stock  CHECK (stock >= 0 );
ALTER TABLE grupo4.ventas_detalle ADD CONSTRAINT CHK_cantidad  CHECK (cantidad > 0 );
ALTER TABLE grupo4.ventas_detalle ADD CONSTRAINT CHK_precio_final CHECK (precio_final >= 0 );

GO

--- RESTRICCION DE VALOR POR DEFECTO ----
ALTER TABLE grupo4.libro ADD CONSTRAINT DF_stock DEFAULT 0 FOR stock;
ALTER TABLE grupo4.ventas_detalle ADD CONSTRAINT DF_precio_final DEFAULT 0 FOR precio_final;

GO

---- RESTRICCION DE CALVE FORANEA ----
ALTER TABLE grupo4.libro ADD CONSTRAINT fk_editorial_id FOREIGN KEY (editorial_id) REFERENCES grupo4.editorial (editorial_id);
ALTER TABLE grupo4.libro_detalle ADD CONSTRAINT fk_libro_id FOREIGN KEY (libro_id) REFERENCES grupo4.libro (libro_id);
ALTER TABLE grupo4.libro_detalle ADD CONSTRAINT fk_autor_id FOREIGN KEY (autor_id) REFERENCES grupo4.autor (autor_id);
ALTER TABLE grupo4.categoria_detalle ADD CONSTRAINT fk_categoria_id FOREIGN KEY (categoria_id) REFERENCES grupo4.categoria (categoria_id);
ALTER TABLE grupo4.categoria_detalle ADD CONSTRAINT fk_libro_id_categoria_detalle FOREIGN KEY (libro_id) REFERENCES grupo4.libro (libro_id);
ALTER TABLE grupo4.ventas ADD CONSTRAINT fk_cliente_id FOREIGN KEY (cliente_id) REFERENCES grupo4.cliente (cliente_id);
ALTER TABLE grupo4.ventas ADD CONSTRAINT fk_empleado_id FOREIGN KEY (empleado_id) REFERENCES grupo4.empleado (empleado_id);
ALTER TABLE grupo4.ventas ADD CONSTRAINT fk_sucursal_id FOREIGN KEY (sucursal_id) REFERENCES grupo4.sucursal (sucursal_id);
ALTER TABLE grupo4.ventas_detalle ADD CONSTRAINT fk_libro_id_ventas_detalle FOREIGN KEY (libro_id) REFERENCES grupo4.libro (libro_id);
ALTER TABLE grupo4.ventas_detalle ADD CONSTRAINT fk_ventas_id FOREIGN KEY (ventas_id) REFERENCES grupo4.ventas (ventas_id);
