create database tienda_usb;

use tienda_usb;

CREATE TABLE cliente (
	id_cliente INT auto_increment primary key,
    usuario varchar(10),
    contrasena varchar(45)
);    