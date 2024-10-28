create database laboratorio;

-- Tabla clientes
create table clientes(
ID_cliente int primary key,
Nombre_cliente varchar(50),
Direccion_cliente varchar(50),
Correo_electronico varchar(50),
Telefono_cliente varchar(20)
);

-- tabla productos
create table productos(
ID_productos int primary key,
Nombre_producto varchar(100),
Descripcion_producto TEXT,
Precio_producto decimal(10,2),
Stock_producto int
);

-- Tabla pedidos
create table Pedidos(
ID_pedidos int primary key,
Fecha_pedido date,
Estado_pedido varchar(50),
ID_cliente int,
foreign key(ID_cliente)references clientes(ID_cliente)
); 

-- Tabla Detalles del pedido
create table Detalles_pedido(
ID_detalle int primary key,
Cantidad int,
Precio_unitario decimal(10,2),
Subtotal decimal(10,2),
ID_Pedido int,
ID_producto int,
foreign key(ID_Pedido)references Pedidos(ID_pedidos),
foreign key(ID_producto)references productos(ID_productos)
);

INSERT INTO clientes (Nombre_cliente, Direccion_cliente, Correo_electronico, Telefono_cliente)
VALUES ('Santiago', 'Cll 1 #2-3', 'franco501@gmail.com', '12345678');

INSERT INTO productos (Nombre_producto, Descripcion_producto, Precio_producto, Stock_producto)
VALUES ('Computador', 'Pc de mesa', '30.600', '12');

--Valor Pedido

INSERT INTO Detalles_pedido (Cantidad, Precio_unitario, Subtotal)
VALUES ('1', '30.600', '30.600');

SELECT * FROM productos WHERE stock > 0;

SELECT Pedidos.ID_pedidos, Pedidos.Fecha_pedido, Pedidos.Estado_pedido FROM Pedidos
JOIN clientes ON Pedidos.ID_cliente = clientes.ID_cliente
WHERE clientes.Nombre_cliente = 'Santiago';


