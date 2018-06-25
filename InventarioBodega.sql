CREATE DATABASE "Inventario"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Spanish_Ecuador.1252'
       LC_CTYPE = 'Spanish_Ecuador.1252'
       CONNECTION LIMIT = -1;

--crear tabla Productos
CREATE TABLE Productos(
id Serial PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
fechaCaducidad DATE NULL,
cantidad INT NOT NULL,
precioUnitario DECIMAL NOT NULL,
idTipoProducto INT FOREIGN KEY
);

--crear tabla Facturas
CREATE TABLE Facturas(
    id Serial PRIMARY KEY,
    numeroFactura INT NOT NULL,
    fechaFactura DATETIME NOT NULL,
    iva DECIMAL NOT NULL,
    total DECIMAL NOT NULL,
    idPersona INT FOREIGN KEY 
);

--crear tabla personas
CREATE TABLE Personas (
    id Serial PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL,
    direccion VARCHAR (50) NOT NULL,
    telefono INT NOT NULL
);


--crear tabla PersonaJuridicas
CREATE TABLE PersonasJudidicas (
    id Serial PRIMARY KEY FOREIGN KEY
   ruc  VARCHAR (10) NOT NULL
);

--crear tabla PersonasNaturales
CREATE TABLE PersonasNaturales (
    id Serial PRIMARY KEY, FOREIGN KEY
   cedula  VARCHAR (10) NOT NULL,
   foto BINARY NULL
);

--crear tabla DetalleFacturas
CREATE TABLE DetallesFacturas (
    id Serial PRIMARY KEY,
    precio DECIMAL NOT NULL,
    cantidad INT NOT NULL,
    precioTotal DECIMAL NOT NULL,
    idProducto INT FOREIGN KEY
    idFactura INT FOREIGN KEY 
);

--crear tablaTipoProducto
CREATE TABLE TipoProductos (
    id Serial PRIMARY KEY,
   tipo VARCHAR (50) NOT NULL
);

--crear tabla Proveedores
CREATE TABLE Proveedores (
    id Serial PRIMARY KEY,
   ruc  VARCHAR  (50) NOT NULL,
   idPersona INT NOT NULL
);

--crear tabla Clientes
CREATE TABLE Clientes (
    id Serial PRIMARY KEY, 
   idPersona INT FOREIGN KEY 
);


--crear tabla Empleados
CREATE TABLE Empleados (
    id Serial PRIMARY KEY,
   fechainicio  DATETIME NOT NULL,
   sueldo SMALLMONEY,
   idPersona INT NOT NULL
);

--crear tabla ProductosProveedores
CREATE TABLE ProductosProveedores (
    id Serial PRIMARY KEY,
   idProducto INT FOREIGN KEY, 
   idProveedor FOREIGN KEY
);

--crear tabla Bodegas
CREATE TABLE Bodegas (
    id Serial PRIMARY KEY,
   nombre VARCHAR (50) NOT NULL,
   cantidad INT NOT NULL,
   idProducto FOREIGN KEY
);

 --crear tabla ProductosBodegas 
CREATE TABLE ProductosBodegas (
    id Serial PRIMARY KEY,
   fechainicio  DATETIME NOT NULL,
  idProducto INT FOREIGN KEY
   idBodega INT NOT NULL
);