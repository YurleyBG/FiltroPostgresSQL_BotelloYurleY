--- 5. Procedimientos y Funciones
-- Un procedimiento almacenado para registrar una venta.
create or replace procedure registrar_venta( id_cliente int ,id_productico int ,quantity int ,forma_pago varchar(20), id_compra int )
language plpgsql as $$
declare total_precio int;
begin 
	select p.precio * dc.quantity into  total_precio from producto p inner join detalle_compra dc 
	on p.id=dc.id_producto where p.id=id_productico and p.stock>dc.quantity;
	insert into registro_compra (fecha_compra ,id_cliente) values (current_date ,id_cliente);
	insert into detalle_compra(id_producto ,id_regitroCompra,quantity,precio_total,forma_pago) values 
	(id_productico,id_compra,quantity,total_precio,forma_pago);
	
end;
$$ ;
drop procedure registrar_venta;
call registrar_venta(1,2,4,'efectivo',15);

-- Validar que el cliente exista.
create or replace  function  validar_cliente( idcliente int)
returns boolean  as $$
declare cliente_existe boolean;
begin 

	select exists( select 1 from cliente where id=idcliente)into cliente_existe;
	if cliente_existe='false' then 
	 	return 'False';
	end if;
	return cliente_existe;
end;
$$ language plpgsql;


select validar_cliente(1);
-- Verificar que el stock sea suficiente antes de procesar la venta.
create or replace function  verificar_stock( id_product int )
returns text as $$
declare respo boolean;
begin 
	
	select p.stock>dc.quantity into respo from producto p inner join detalle_compra dc on p.id=dc.id_producto where p.id=id_product;
	if respo='false' then 
	 	return 'no es suficiente';
	end if;
	return 'si es suficiente';
end;
$$ language plpgsql;

	
select verificar_stock(1);
-- Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.

create or replace procedure notificar_stock_insufi( id_product int )
language plpgsql as $$
declare respo boolean;
begin 
	
	select p.stock>dc.quantity into respo from producto p inner join detalle_compra dc on p.id=dc.id_producto where p.id=id_product;
	if respo='false' then 
	 	raise notice'no es suficiente';
	end if;
	raise notice 'si es suficiente';
end;
$$ ;


call notificar_stock_insufi(1);
-- Si hay stock, se realiza el registro de la venta.

create or replace procedure registrar( id_cliente int ,id_productico int ,quantity int ,forma_pago varchar(20), id_compra int )
language plpgsql as $$
declare total_precio int;
declare respo boolean;
begin 
	
	select p.stock>dc.quantity into respo from producto p inner join detalle_compra dc on p.id=dc.id_producto where p.id=id_productico;
	if respo='false' then 
	 	raise notice'no es suficiente';
	end if;
	raise notice 'si es suficiente';
	select p.precio * dc.quantity into  total_precio from producto p inner join detalle_compra dc 
	on p.id=dc.id_producto where p.id=id_productico and p.stock>dc.quantity;
	insert into registro_compra (fecha_compra ,id_cliente) values (current_date ,id_cliente);
	insert into detalle_compra(id_producto ,id_regitroCompra,quantity,precio_total,forma_pago) values 
	(id_productico,id_compra,quantity,total_precio,forma_pago);
end;
$$ ;

drop procedure registrar;
call registrar(1,2,4,'efectivo',15);