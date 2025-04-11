-- Consultas SQL 

-- 1 Listar los productos con stock menor a 5 unidades.

select nombre ,descripcion,categoria, precio,stock,id_proveedor from producto  where stock<5;

-- 2 Calcular ventas totales de un mes específico.

select count(rc.id), rc.id_cliente , rc.fecha_compra from registro_compra rc  
where  fecha_compra between '2025-02-01' and '2025-02-28' group by 2,3;

-- 3 Obtener el cliente con más compras realizadas.

select count(rc.id) as compras_realizadas, c.nombre from registro_compra rc inner join cliente c
on c.id=rc.id_cliente where rc.id_cliente=c.id group by 2 order by 1 desc limit 2;

-- 4 Listar los 5 productos más vendidos.

select nombre, count(dc.id_producto)as cantidad from detalle_compra dc inner join producto p  on dc.id_producto=p.id group by 1
order by 2 desc limit 5;

-- 5 Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.

select * from detalle_compra dc inner join registro_compra rc  on rc.id=dc.id_regitroCompra where fecha_compra between '2025-04-07' and '2025-04-11';

-- 6 Identificar clientes que no han comprado en los últimos 6 meses.

select count(rc.id), rc.id_cliente , rc.fecha_compra from registro_compra rc  right join cliente c on c.id=rc.id_cliente
where  fecha_compra between '2024-10-01' and '2025-04-30' group by 2,3;



