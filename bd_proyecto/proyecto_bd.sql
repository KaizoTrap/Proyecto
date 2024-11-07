CREATE DATABASE tienda_usb;
USE tienda_usb;

-- Tabla usuario
CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(10) NOT NULL,
    contrasena VARCHAR(45) NOT NULL
);

-- Tabla datos_usuario
CREATE TABLE datos_usuario (
    id_dato INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(45) NOT NULL,
    apellido_usuario VARCHAR(45) NOT NULL,
    correo_usuario VARCHAR(45) NOT NULL,
    numero_identificacion BIGINT NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla producto
CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(45) NOT NULL,
    precio_producto DECIMAL(10, 2) NOT NULL,
    imagen VARCHAR(45)
);

-- Tabla descripcion_producto
CREATE TABLE descripcion_producto (
    id_descripcion_producto INT AUTO_INCREMENT PRIMARY KEY,
    detalle_producto VARCHAR(300) NOT NULL,
    talla VARCHAR(2),
    stock_prenda INT,
    tipo_prenda VARCHAR(45) NOT NULL,
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla pedido
CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pedido DATETIME NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Tabla detalle_pedido
CREATE TABLE detalle_pedido (
    id_detalle_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- Tabla facturas_generadas
CREATE TABLE facturas_generadas (
    id_facturas INT AUTO_INCREMENT PRIMARY KEY,
    factura_codigo VARCHAR(45) NULL,
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);


INSERT INTO producto(nombre_producto,precio_producto,imagen) VALUES('CAMISETA NEGRA',40.000 ,'PROD000001.png');
INSERT INTO producto(nombre_producto,precio_producto,imagen) VALUES('BUSO',110.000 ,'PROD000002.png');
