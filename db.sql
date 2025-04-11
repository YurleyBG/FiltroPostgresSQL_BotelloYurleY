create table proovedores (
	id serial primary key,
	nombre varchar(50) not null,
	direccion varchar(50) not null,
	telefono int

);


create table producto(
	id serial primary key ,
	nombre varchar(50) not null,
	descripcion text ,
	categoria varchar(50) not null,
	precio numeric not null,
	stock integer default 0,
	id_proveedor integer,
	constraint fk_id_proveedor foreign key(id_proveedor) references proovedores(id)

);


create table cliente(
	id serial primary key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	telefono int ,
	direccion varchar(50) not null,
	cedula integer unique



);

create table registro_compra(
	id serial primary key,
	fecha_compra date ,
	id_cliente integer,
	constraint fk_cliente foreign key(id_cliente) references cliente(id)



);

create table detalle_compra (

	id serial primary key ,
	id_producto integer not null,
	id_regitroCompra integer not null,
	quantity integer check(quantity>0), 
	precio_total numeric(10,2) ,
	forma_pago varchar(20) not null,
	constraint fk_id_producto foreign key(id_producto) references producto(id),
	constraint fk_regitroCompra foreign key(id_regitroCompra) references registro_compra(id)

);



