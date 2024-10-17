USE tienda_usb;

alter table datos_usuario add column id_usuario int UNIQUE;

ALTER TABLE datos_usuario
ADD CONSTRAINT fk_id_usuario
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);


alter table descripcion_producto add column id_producto int;

ALTER TABLE descripcion_producto
ADD CONSTRAINT fk_id_producto
FOREIGN KEY (id_producto) REFERENCES producto(id_producto);


ALTER TABLE producto ADD COLUMN id_pedido INT;

ALTER TABLE producto 
ADD CONSTRAINT fk_id_pedido 
FOREIGN KEY (id_pedido) 
REFERENCES pedido(id_pedido);


ALTER TABLE detalle_pedido ADD COLUMN id_pedido INT;
ALTER TABLE detalle_pedido ADD COLUMN id_producto INT;
ALTER TABLE detalle_pedido ADD COLUMN id_usuario INT;
ALTER TABLE detalle_pedido ADD COLUMN id_facturas INT;

ALTER TABLE detalle_pedido 
ADD CONSTRAINT fk_id_dato 
FOREIGN KEY (id_usuario) REFERENCES datos_usuario(id_dato);

ALTER TABLE detalle_pedido 
ADD CONSTRAINT fk_id_descripcion_producto 
FOREIGN KEY (id_producto) REFERENCES descripcion_producto(id_descripcion_producto);

ALTER TABLE detalle_pedido 
ADD CONSTRAINT fk_id_pedido_
FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido);

ALTER TABLE detalle_pedido 
ADD CONSTRAINT fk_id_facturas 
FOREIGN KEY (id_facturas) REFERENCES facturas_generadas(id_facturas);














