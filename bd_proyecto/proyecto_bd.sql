create database tienda_usb;

use tienda_usb;

CREATE TABLE usuario (
	id_usuario INT auto_increment primary key,
    usuario varchar(10) not null,
    contrasena varchar(45) not null
);    

CREATE TABLE datos_usuario (
	id_dato INT auto_increment primary key,
    nombre_usuario varchar(45) not null,
    apellido_usuario varchar(45) not null,
    correo_usuario varchar(45) not null,
	numero_identificacion int(15) not null
);    

CREATE TABLE producto (
	id_producto INT auto_increment primary key,
    nombre_producto varchar(45) not null,
    precio_producto int(10) not null,
    imagen varchar(45) NULL
);    

CREATE TABLE decripcion_producto (
	id_descripcion_producto INT auto_increment primary key,
    detalle_producto varchar(300) not null,
    talla varchar(2) null,
    stock_prenda int NULL,
    tipo_prenda varchar(45) not null
);    

CREATE TABLE pedido (
	id_pedido INT auto_increment primary key,
    fecha_pedido datetime not null
);    

CREATE TABLE detalle_pedido (
	id_detalle_pedido INT auto_increment primary key,
    cantidad int not null,
    total int(10) not null
);    

CREATE TABLE facturas_generadas (
	id_facturas INT auto_increment primary key,
    factuas_generadas varchar(45) NULL
);    
